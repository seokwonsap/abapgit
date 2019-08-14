*&---------------------------------------------------------------------*
*& Report ZBIRTH_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBIRTH_PRG_26.



PARAMETERS LV_BIRTH TYPE DATS.
DATA LV_AGE1 TYPE I.
DATA LV_AGE2 TYPE I.

CALL FUNCTION 'ZGET_AGE_26'
  EXPORTING
    IV_BIRDT = LV_BIRTH
  IMPORTING
    EV_AGE1 = LV_AGE1
    EV_AGE2 = LV_AGE2.


WRITE LV_AGE1.
WRITE LV_AGE2.
