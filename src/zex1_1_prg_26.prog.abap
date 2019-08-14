*&---------------------------------------------------------------------*
*& Report ZEX1_1_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEX1_1_PRG_26.


PARAMETERS PA_NUM TYPE i.

DATA LV_RESULT TYPE i.

CLEAR SY-INDEX.

DO.

IF SY-INDEX = 10.
  EXIT.
ENDIF.

LV_RESULT = PA_NUM * SY-INDEX.

WRITE:/ PA_NUM &&
        ' X ',
        SY-INDEX &&
        ' = '&&
        LV_RESULT.

ENDDO.


ULINE.

WRITE:/ LV_RESULT.
