*&---------------------------------------------------------------------*
*& Report ZVALUE_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZVALUE_PRG_26.

DATA: GV_CARRID1 TYPE S_CARR_ID,
      GV_CARRID2 TYPE S_CARR_ID VALUE 'LH',
      GV_CNT TYPE I.

CONSTANTS: GC_QF TYPE S_CARR_ID VALUE 'qf'.


MOVE GC_QF TO GV_CARRID1.

WRITE:/ GV_CARRID1.
WRITE:/ GV_CARRID2.

GV_CARRID2 = GV_CARRID1.

WRITE:/ GV_CARRID2.

GV_CNT = GV_CNT + 1.
WRITE:/ GV_CNT.



*NEW-LINE.
*:/ 차이점 테스트
*WRITE:/ '안녕'.
*WRITE '안녕2'.
*WRITE:/ '안녕3'.
*WRITE:/ '안녕4'.
*WRITE '안녕5'.
*WRITE '안녕6'.
*WRITE:/ '안녕7'.
*:/는 한칸 띄운다고 생각하면 됨

clear: GV_CARRID1, GV_CARRID2, gv_cnt.
WRITE:/ GV_CARRID1.
WRITE:/ GV_CARRID2.
WRITE:/ GV_CNT.

NEW-LINE.

WRITE GV_CARRID1.
WRITE GV_CARRID2.
WRITE GV_CNT.
