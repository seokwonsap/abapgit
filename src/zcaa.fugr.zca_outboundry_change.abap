FUNCTION ZCA_OUTBOUNDRY_CHANGE .
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_VBELN) TYPE  VBELN
*"     VALUE(I_ITMNUM) TYPE  POSNR OPTIONAL
*"     VALUE(I_PICKING) TYPE  KOSTK OPTIONAL
*"     VALUE(I_POSTGOOD) TYPE  WBSTK OPTIONAL
*"  EXPORTING
*"     VALUE(E_MESSAGE) TYPE  BAPI_MSG
*"     VALUE(E_ERROR) TYPE  BAPI_MSG
*"  TABLES
*"      T_RETURN STRUCTURE  BAPIRET2 OPTIONAL
*"----------------------------------------------------------------------



*------------------------PICKING--------------------------
"피킹작업 시
IF I_PICKING IS NOT INITIAL.

      DATA :  W_VBKOK_WA  TYPE VBKOK, "Outbound Header

              T_LIPS      TYPE TABLE OF LIPS, "Outbound Items
              W_LIPS      TYPE LIPS,

              T_VBPOK_TAB TYPE TABLE OF VBPOK,
              W_VBPOK_TAB TYPE VBPOK, "Confirming Picking Data

              L_VBELN TYPE VBELN_VL.


      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          INPUT  = I_VBELN
        IMPORTING
          OUTPUT = L_VBELN.


      "Insert IS_VBELN(DOC Number)
      W_VBKOK_WA-VBELN_VL = L_VBELN.

      "Search Material Datas From IS_VBELN(DOC Number)
      SELECT * FROM LIPS INTO CORRESPONDING FIELDS OF TABLE T_LIPS
                         WHERE VBELN = W_VBKOK_WA-VBELN_VL
                         ORDER BY POSNR.


      IF T_LIPS IS NOT INITIAL.

            LOOP AT T_LIPS INTO W_LIPS.
              W_VBPOK_TAB-VBELN_VL = W_LIPS-VBELN.
              W_VBPOK_TAB-POSNR_VL = W_LIPS-POSNR.
              W_VBPOK_TAB-VBELN = W_LIPS-VBELN.
              W_VBPOK_TAB-POSNN = W_LIPS-POSNR.
              W_VBPOK_TAB-MATNR = W_LIPS-MATNR.
              W_VBPOK_TAB-CHARG = W_LIPS-LFIMG.
              W_VBPOK_TAB-PIKMG = W_LIPS-LFIMG.
              APPEND W_VBPOK_TAB TO T_VBPOK_TAB.
              CLEAR W_VBPOK_TAB.
            ENDLOOP.

            CALL FUNCTION 'SD_DELIVERY_UPDATE_PICKING_1'
              EXPORTING
                VBKOK_WA                       = W_VBKOK_WA"W_VBKOK_WA
                SYNCHRON                       = 'X'
              TABLES
                VBPOK_TAB                      = T_VBPOK_TAB
                .
      ELSE.
        CONCATENATE E_ERROR 'Doc is not found, Check Document Number !' INTO E_ERROR.
      ENDIF.

ENDIF.
*---------------------------------------------------------





*--------------------GOOD MOVEMENT------------------------
"Good Issue 시
IF I_POSTGOOD IS NOT INITIAL.

DATA :  W_HEADER_DATA TYPE  BAPIOBDLVHDRCON,
        W_HEADER_CONTROL  TYPE  BAPIOBDLVHDRCTRLCON,
        L_DELIVERY  TYPE  BAPIOBDLVHDRCON-DELIV_NUMB,
        W_RETURN           TYPE BAPIRET2,
        L_COUNT            TYPE syst_fmkey,
        L_PICKSTATUS           TYPE KOSTA,
        L_GOODSTATUS           TYPE KOSTA.

W_HEADER_DATA-DELIV_NUMB = I_VBELN.
W_HEADER_CONTROL-DELIV_NUMB = I_VBELN.
W_HEADER_CONTROL-POST_GI_FLG = 'X'.
L_DELIVERY = I_VBELN.


SELECT SINGLE KOSTA WBSTA FROM LIPS INTO (L_PICKSTATUS,L_GOODSTATUS) WHERE VBELN LIKE L_DELIVERY.

IF L_PICKSTATUS = 'C' AND L_GOODSTATUS = 'A'.
    CALL FUNCTION 'BAPI_OUTB_DELIVERY_CONFIRM_DEC'
      EXPORTING
        HEADER_DATA                      =  W_HEADER_DATA
        HEADER_CONTROL                   =  W_HEADER_CONTROL
        DELIVERY                         =  L_DELIVERY
      TABLES
        RETURN                           =  T_RETURN
              .
ELSE.
  IF L_PICKSTATUS <> 'C'.
    CONCATENATE E_ERROR 'Materials are not picked yet' INTO E_ERROR.
  ENDIF.
  IF L_GOODSTATUS = 'C'.
    CONCATENATE E_ERROR 'This document is already posted good issue' INTO E_ERROR.
  ENDIF.
ENDIF.

  IF E_ERROR IS INITIAL .
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
        WAIT = 'X'.
    CONCATENATE 'Outbound Delivery (납품문서)' L_DELIVERY 'GOOD MOVEMENT Success(GM성공) !' INTO E_MESSAGE
    SEPARATED BY SPACE.
  ELSE.
    LOOP AT T_RETURN INTO W_RETURN.
      L_COUNT = L_COUNT + 1.
      CONDENSE L_COUNT.
      CONCATENATE E_ERROR L_COUNT '.' W_RETURN-MESSAGE ';' INTO E_ERROR.
    ENDLOOP.
  ENDIF.

ENDIF.
*---------------------------------------------------------









ENDFUNCTION.
