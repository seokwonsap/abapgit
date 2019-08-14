REPORT ZEX1_2_PRG_26.

PARAMETERS pa_num TYPE i.

if pa_num < 2.
    MESSAGE '2이상을 입력하세요' TYPE 'I'.
  ELSEIF pa_num >= 10.
    MESSAGE '10미만을  입력하세요' TYPE 'I'.
  ELSE.
    DATA LV_RESULT TYPE i VALUE 1.

    DO pa_num TIMES.

      IF  SY-INDEX = pa_num.
        EXIT.
      ENDIF.

      WRITE SY-INDEX && ' * '.

      LV_RESULT = LV_RESULT * ( pa_num - SY-INDEX + 1 ).

    ENDDO.

    WRITE pa_num && '　=　' && LV_RESULT.
ENDIF.
