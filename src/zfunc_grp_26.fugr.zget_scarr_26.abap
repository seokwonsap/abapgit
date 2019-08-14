FUNCTION ZGET_SCARR_26.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRID) TYPE  S_CARRID
*"  EXPORTING
*"     REFERENCE(ES_SCARR) TYPE  SCARR
*"----------------------------------------------------------------------

SELECT SINGLE * INTO ES_SCARR
FROM SCARR
WHERE CARRID = IV_CARRID.


ENDFUNCTION.
