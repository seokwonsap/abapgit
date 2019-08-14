FUNCTION ZCALC_IPOW_26.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_BASE) TYPE  I
*"     REFERENCE(IV_EXP) TYPE  I
*"  EXPORTING
*"     REFERENCE(EV_PRESULT) TYPE  P
*"----------------------------------------------------------------------



EV_PRESULT = IPOW( BASE = IV_BASE EXP = IV_EXP ).


ENDFUNCTION.
