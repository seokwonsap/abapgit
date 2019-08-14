*&---------------------------------------------------------------------*
*& Report ZLCL_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZLCL_PRG_26.


CLASS LCL_COMPUTER_26 DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS GET_PERCENTAGE
      IMPORTING
        IV_ACT TYPE I
        IV_MAX TYPE I
      EXPORTING
        EV_RESULT TYPE BC400_PERC.

**   하나 더 선언 시
*    CLASS-METHODS GET_DATA
*      IMPORTING
*        IV_TTT TYPE I
*      EXPORTING
*        EV_TTT TYPE I.

ENDCLASS.



CLASS LCL_COMPUTER_26 IMPLEMENTATION.
  METHOD GET_PERCENTAGE.
    IF IV_MAX = 0.
      EV_RESULT = 0.
    ELSE.
      EV_RESULT = IV_ACT / IV_MAX * 100.
    ENDIF.
  ENDMETHOD.

**Method 하나 더 선언 시
*  METHOD GET_DATA.
*  ENDMETHOD.

ENDCLASS.

DATA: GV_RESULT TYPE BC400_PERC.

START-OF-SELECTION.

CALL METHOD LCL_COMPUTER_26=>GET_PERCENTAGE
  EXPORTING
    IV_ACT = 2
    IV_MAX = 3
  IMPORTING
    EV_RESULT = GV_RESULT.

WRITE GV_RESULT.
