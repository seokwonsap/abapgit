*&---------------------------------------------------------------------*
*& Report ZSELSCR_PRG_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSELSCR_PRG_26.

DATA: GS_FLIGHT TYPE BC400_S_FLIGHT.

SELECTION-SCREEN BEGIN OF BLOCK BLK1 WITH FRAME.
SELECT-OPTIONS: SO_CAR FOR GS_FLIGHT-CARRID NO-EXTENSION,
                SO_CON FOR GS_FLIGHT-CONNID NO INTERVALS,
                SO_FDT FOR GS_FLIGHT-FLDATE NO-EXTENSION NO INTERVALS.
SELECTION-SCREEN END OF BLOCK BLK1.

SELECTION-SCREEN BEGIN OF BLOCK BLK2 WITH FRAME TITLE TEXT-T01.
  PARAMETERS: pa_all AS CHECKBOX,
              pa_int AS CHECKBOX,
              pa_nat AS CHECKBOX,
              pa_lim1 RADIOBUTTON GROUP rb1,
              pa_lim2 RADIOBUTTON GROUP rb1,
              pa_lim3 RADIOBUTTON GROUP rb1.

  PARAMETERS: pa_lim4  RADIOBUTTON GROUP rb1.
SELECTION-SCREEN END OF BLOCK BLK2.

INITIALIZATION.
  PA_ALL = 'X'.
  PA_LIM2 = 'X'.
