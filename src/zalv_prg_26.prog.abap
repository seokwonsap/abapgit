*&---------------------------------------------------------------------*
*& Report ZALV_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*


INCLUDE ZALV_PRG_26TOP.
INCLUDE ZALV_PRG_26I01.
INCLUDE ZALV_PRG_26O01.
INCLUDE ZALV_PRG_26F01.

START-OF-SELECTION.
  PERFORM GET_DATA.

  IF GT_DATA IS NOT INITIAL. "GT_DATA에 데이터가 있으면
    CALL SCREEN 100. "100번 스크린 실행
  ENDIF.
