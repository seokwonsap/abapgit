FUNCTION ZCA_OUTBOUNDRY_CREATE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_SALESDOC) TYPE  RFBEL_VL
*"     VALUE(I_ITMNUM) TYPE  POSNR OPTIONAL
*"     VALUE(I_SHIPPOINT) TYPE  BAPIDLVCREATEHEADER-SHIP_POINT OPTIONAL
*"     VALUE(I_DUEDATE) TYPE  BAPIDLVCREATEHEADER-DUE_DATE OPTIONAL
*"  EXPORTING
*"     VALUE(E_DELIVERY) TYPE  BAPISHPDELIVNUMB-DELIV_NUMB
*"     VALUE(E_MESSAGE) TYPE  BAPI_MSG
*"     VALUE(E_ERROR) TYPE  BAPI_MSG
*"  TABLES
*"      T_SALES_ORDER_ITEMS STRUCTURE  BAPIDLVREFTOSALESORDER OPTIONAL
*"      T_RETURN STRUCTURE  BAPIRET2 OPTIONAL
*"----------------------------------------------------------------------


DATA :  W_RETURN            TYPE BAPIRET2,
        W_SALES_ORDER_ITEMS TYPE BAPIDLVREFTOSALESORDER,
        L_COUNT             TYPE SYST_FMKEY,
        L_CMNGV            TYPE VBAK-CMNGV.

W_SALES_ORDER_ITEMS-REF_DOC = I_SALESDOC.
APPEND W_SALES_ORDER_ITEMS TO T_SALES_ORDER_ITEMS.




IF I_SHIPPOINT IS INITIAL.
  I_SHIPPOINT = 'A001'.
ENDIF.


SELECT SINGLE CMNGV FROM VBAK INTO L_CMNGV
                    WHERE VBELN LIKE I_SALESDOC
                    .


IF I_DUEDATE IS INITIAL.
  I_DUEDATE = L_CMNGV.
ENDIF.


CALL FUNCTION 'BAPI_OUTB_DELIVERY_CREATE_SLS'
 EXPORTING
   SHIP_POINT              = I_SHIPPOINT
   DUE_DATE                = I_DUEDATE
 IMPORTING
   DELIVERY                = E_DELIVERY
  TABLES
   SALES_ORDER_ITEMS       = T_SALES_ORDER_ITEMS
   RETURN                  = T_RETURN
          .

  IF E_DELIVERY IS NOT INITIAL.

    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
        WAIT = 'X'.
    CONCATENATE 'Outbound Delivery(납품문서)' E_DELIVERY 'has been Created(생성완료) !' INTO E_MESSAGE
    SEPARATED BY SPACE.
  ELSE.
    LOOP AT T_RETURN INTO W_RETURN.
      L_COUNT = L_COUNT + 1.
      CONDENSE L_COUNT.
      CONCATENATE E_ERROR L_COUNT '.' W_RETURN-MESSAGE ';' INTO E_ERROR.
    ENDLOOP.
  ENDIF.


ENDFUNCTION.