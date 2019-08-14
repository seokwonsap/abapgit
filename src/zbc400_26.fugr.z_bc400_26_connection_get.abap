FUNCTION Z_BC400_26_CONNECTION_GET.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRID) TYPE  S_CARR_ID
*"     REFERENCE(IV_CONNID) TYPE  S_CONN_ID
*"  EXPORTING
*"     REFERENCE(ES_CONNECTION) TYPE  BC400_S_CONNECTION
*"  EXCEPTIONS
*"      NO_DATA
*"----------------------------------------------------------------------




SELECT SINGLE *
  INTO CORRESPONDING FIELDS OF ES_CONNECTION
  FROM SPFLI
  WHERE CARRID = IV_CARRID
    AND CONNID = IV_CONNID.

IF SY-SUBRC <> 0.
  RAISE NO_DATA.
ENDIF.


ENDFUNCTION.
