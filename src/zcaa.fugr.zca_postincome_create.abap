FUNCTION ZCA_POSTINCOME_CREATE.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_COMPANY) TYPE  BUKRS
*"     VALUE(I_CUSTOMER) TYPE  KUNNR
*"     VALUE(I_BILLDOC) TYPE  BELNR_D OPTIONAL
*"     VALUE(I_AMOUNT) TYPE  BAPIDOCCUR OPTIONAL
*"  EXPORTING
*"     VALUE(E_OBJ_TYPE) TYPE  BAPIACHE09-OBJ_TYPE
*"     VALUE(E_OBJ_KEY) TYPE  BAPIACHE09-OBJ_KEY
*"     VALUE(E_OBJ_SYS) TYPE  BAPIACHE09-OBJ_SYS
*"     VALUE(E_MESSAGE) TYPE  BAPI_MSG
*"     VALUE(E_ERROR) TYPE  BAPI_MSG
*"  TABLES
*"      T_ACCOUNTGL STRUCTURE  BAPIACGL09 OPTIONAL
*"      T_ACCOUNTRECEIVABLE STRUCTURE  BAPIACAR09 OPTIONAL
*"      T_CURRENCYAMOUNT STRUCTURE  BAPIACCR09 OPTIONAL
*"      T_RETURN STRUCTURE  BAPIRET2 OPTIONAL
*"----------------------------------------------------------------------
*"개발중 사용 금지
DATA : I_DOCHEAD           TYPE  BAPIACHE09,
       W_ACCOUNTGL         TYPE BAPIACGL09,
       W_ACCOUNTRECEIVABLE TYPE BAPIACAR09,
       W_CURRENCYAMOUNT    TYPE BAPIACCR09.



*"---------------DOCHEADER------------------
I_DOCHEAD-USERNAME   = SY-UNAME.
I_DOCHEAD-HEADER_TXT = I_BILLDOC.
I_DOCHEAD-COMP_CODE  = I_COMPANY.
I_DOCHEAD-DOC_DATE   = SY-DATUM.
I_DOCHEAD-PSTNG_DATE = SY-DATUM.
I_DOCHEAD-DOC_TYPE   = 'DZ'. " Document Type : Customer Payment
I_DOCHEAD-FIS_PERIOD = '10'. " Default : 10
I_DOCHEAD-REF_DOC_NO = I_BILLDOC.
*"------------------------------------------



*"---------------ACCOUNT-GL-----------------
W_ACCOUNTGL-ITEMNO_ACC = 1.
W_ACCOUNTGL-PSTNG_DATE = SY-DATUM .
W_ACCOUNTGL-GL_ACCOUNT = '0011001010'. "Bank 1 - Payment Request
W_ACCOUNTGL-ITEM_TEXT  = I_BILLDOC.
W_ACCOUNTGL-COMP_CODE  = I_COMPANY.
W_ACCOUNTGL-CUSTOMER   = I_CUSTOMER.
APPEND W_ACCOUNTGL TO T_ACCOUNTGL.
CLEAR : W_ACCOUNTGL.
*"---------------CURRENCY-------------------
DATA : L_CURRENCY TYPE WAERK.
SELECT SINGLE WAERK FROM VBRK INTO L_CURRENCY WHERE VBELN LIKE I_BILLDOC.
IF L_CURRENCY IS INITIAL.
  L_CURRENCY = 'USD'.
ENDIF.
W_CURRENCYAMOUNT-ITEMNO_ACC = 1.
W_CURRENCYAMOUNT-CURRENCY   = L_CURRENCY.
W_CURRENCYAMOUNT-AMT_DOCCUR = I_AMOUNT.
APPEND W_CURRENCYAMOUNT TO T_CURRENCYAMOUNT.
CLEAR : W_CURRENCYAMOUNT.
*"------------------------------------------



*"---------------CUSTOMER-------------------
*"   Reconciliation Account : '0012100000'
*"------------------------------------------
W_ACCOUNTRECEIVABLE-ITEMNO_ACC = 2.
W_ACCOUNTRECEIVABLE-CUSTOMER = I_CUSTOMER.
W_ACCOUNTRECEIVABLE-COMP_CODE = I_COMPANY.
APPEND W_ACCOUNTRECEIVABLE TO T_ACCOUNTRECEIVABLE.
CLEAR : W_ACCOUNTRECEIVABLE.
*"---------------CURRENCY---------------------------
W_CURRENCYAMOUNT-ITEMNO_ACC = 2.
W_CURRENCYAMOUNT-CURRENCY   = L_CURRENCY.
W_CURRENCYAMOUNT-AMT_DOCCUR = - ( I_AMOUNT ).
APPEND W_CURRENCYAMOUNT TO T_CURRENCYAMOUNT.
CLEAR : W_CURRENCYAMOUNT.
*"------------------------------------------






CALL FUNCTION 'BAPI_ACC_DOCUMENT_POST'
  EXPORTING
    DOCUMENTHEADER          = I_DOCHEAD
  IMPORTING
    OBJ_TYPE                = E_OBJ_TYPE
    OBJ_KEY                 = E_OBJ_KEY
    OBJ_SYS                 = E_OBJ_SYS
  TABLES
    ACCOUNTGL               = T_ACCOUNTGL
    ACCOUNTRECEIVABLE       = T_ACCOUNTRECEIVABLE
    CURRENCYAMOUNT          = T_CURRENCYAMOUNT
    RETURN                  = T_RETURN
          .



  IF E_OBJ_KEY NE '$'.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
        WAIT = 'X'.
    SHIFT E_OBJ_KEY LEFT DELETING LEADING '0'.
    CONCATENATE 'Invoice Posting(입금문서)' E_OBJ_KEY ' Successful(생성성공) !' INTO E_MESSAGE
    SEPARATED BY SPACE.
  ELSE.
    DATA : W_RETURN TYPE BAPIRET2,
       L_COUNT  TYPE SYST_FMKEY.

    LOOP AT T_RETURN INTO W_RETURN.
      L_COUNT = L_COUNT + 1.
      CONDENSE L_COUNT.
      CONCATENATE E_ERROR L_COUNT '.' W_RETURN-MESSAGE ';' INTO E_ERROR.
    ENDLOOP.
  ENDIF.


"BAPI_PAYIT_POST_CLEARING

ENDFUNCTION.