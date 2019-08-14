*&---------------------------------------------------------------------*
*& Report ZSUBRTN_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSUBRTN_PRG_26.


*
*PERFORM WRITE_LIST.
*
*
**&---------------------------------------------------------------------*
**& Form WRITE_LIST
**&---------------------------------------------------------------------*
**& text
**&---------------------------------------------------------------------*
**& -->  p1        text
**& <--  p2        text
**&---------------------------------------------------------------------*
*FORM WRITE_LIST .
*
*
*WRITE:/ '하이루 보이루'.
*WRITE:/ '갱 갱 김치갱'.
*WRITE:/ '호룰루'.
*SKIP.
*ULINE.
*
*ENDFORM.


TYPES: TV_PERC TYPE P LENGTH 6 DECIMALS 2.



DATA LV_RESULT TYPE TV_PERC.
PARAMETERS : PA_INT1 TYPE I.
PARAMETERS : PA_INT2 TYPE I.

PERFORM CALC_PERC USING PA_INT1
                  CHANGING
                     PA_INT2
                     LV_RESULT.
WRITE:/ LV_RESULT.




*&---------------------------------------------------------------------*
*& Form CALC_PERC
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*      -->P_PA_INT1  text
*      -->P_PA_INT2  text
*      <--P_LV_RESULT  text
*&---------------------------------------------------------------------*
FORM CALC_PERC  USING VALUE(PV_INT1) TYPE I
                      CHANGING
                        VALUE(PV_INT2) TYPE I
                        PV_RESULT TYPE TV_PERC.

  PV_RESULT = PV_INT1 / PV_INT2 * 100.

  PV_INT2 = 100.

ENDFORM.
