*&---------------------------------------------------------------------*
*& Report ZCALC_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCALC_PRG_26.

DATA: GV_MAX TYPE SBC400FOCC-SEATSMAX,
      GV_OCC TYPE SBC400FOCC-SEATSOCC,
      GV_PERC TYPE SBC400FOCC-PERCENTAGE,
      GV_LEN TYPE I,
      GV_MOD TYPE I,
      GV_STR TYPE STRING.


GV_MAX = 300.
GV_OCC = 220.
GV_STR = 'abcdefghijklmnopqrstuvwxyz'.


GV_PERC = GV_OCC / GV_MAX * 100.
GV_MOD = GV_MAX MOD GV_OCC.


GV_LEN = STRLEN( GV_STR ).

WRITE:/ 'PERC(220/300*100) : ', GV_PERC.
ULINE.
WRITE:/ 'LEN(길이) : ', GV_LEN.
ULINE.
WRITE:/ 'MOD(300/220의 나머지) : ', GV_MOD.
