FUNCTION ZCALC_PERC_26.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_INT1) TYPE  I
*"     REFERENCE(IV_INT2) TYPE  I
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  BC400_PERC
*"  EXCEPTIONS
*"      NO_ZERO
*"----------------------------------------------------------------------


IF IV_INT2 = 0.
   EV_RESULT = 0.
   RAISE NO_ZERO.
ELSE.
  EV_RESULT = IV_INT1 / IV_INT2.
ENDIF.


ENDFUNCTION.
