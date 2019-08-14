*&---------------------------------------------------------------------*
*& Report ZMOD_SCREEN_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMOD_SCREEN_26.

DATA: GS_BOOK TYPE SBOOK.

PARAMETERS: PA_CAR LIKE GS_BOOK-CARRID.

SELECT-OPTIONS: SO_CAR FOR GS_BOOK-CONNID,
                SO_FDT FOR GS_BOOK-FLDATE MODIF ID SEL.

PARAMETERS: PA_ID LIKE GS_BOOK-CUSTOMID MODIF ID SEL.


AT SELECTION-SCREEN OUTPUT.

  LOOP AT SCREEN.
    IF SCREEN-NAME = 'SO-CON-HIGH'.
      SCREEN-ACTIVE = 0.
      MODIFY SCREEN.
    ENDIF.
  ENDLOOP.
