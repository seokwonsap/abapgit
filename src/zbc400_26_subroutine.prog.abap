*&---------------------------------------------------------------------*
*& Report ZBC400_26_SUBROUTINE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC400_26_SUBROUTINE.




TYPES GV_R_TYPE TYPE p LENGTH 16 DECIMALS 2.

*&---------------------------------------------------------------------*
*& Form CALC_PERCENTAGE
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*      -->P_PV_ACT  text
*      -->P_PV_MAX  text
*      <--P_CV_RESULT  text
*&---------------------------------------------------------------------*
FORM CALC_PERCENTAGE  USING    P_PV_ACT TYPE i
                               P_PV_MAX TYPE i
                      CHANGING P_CV_RESULT TYPE GV_R_TYPE.

  IF P_PV_ACT > P_PV_MAX.
    MESSAGE '첫번째 값이 두번째 값보다 큽니다.' TYPE 'I'.
    RETURN.
  ENDIF.

  P_CV_RESULT = P_PV_ACT / P_PV_MAX * 100.

  WRITE:/ P_CV_RESULT && ' %'.

ENDFORM.
