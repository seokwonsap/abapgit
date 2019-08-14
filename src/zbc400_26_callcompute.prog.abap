*&---------------------------------------------------------------------*
*& Report ZBC400_26_CALLCOMPUTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC400_26_CALLCOMPUTE.

PARAMETERS PA_NUM1 TYPE I.
PARAMETERS PA_NUM2 TYPE I.
PARAMETERS PA_OP  TYPE C LENGTH 1.

DATA LV_RESULT TYPE P LENGTH 16 DECIMALS 2.

CALL FUNCTION 'ZCALC_26'
  EXPORTING
    IV_INT1 = PA_NUM1
    IV_INT2 = PA_NUM2
    IV_OP = PA_OP
  IMPORTING
    EV_RESULT = LV_RESULT.

WRITE LV_RESULT.
