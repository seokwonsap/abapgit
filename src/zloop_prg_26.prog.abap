*&---------------------------------------------------------------------*
*& Report ZLOOP_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZLOOP_PRG_26.

DATA: lv_cnt TYPE i.




Do.
  add 1 to lv_cnt.
  WRITE:/ sy-INDEX.

  iF lv_cnt = 7.
    EXIT.
  ENDIF.
ENDDO.

ULINE.

DO 5 TIMES.
  WRITE:/ SY-INDEX.
ENDDO.
