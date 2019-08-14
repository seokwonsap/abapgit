*&---------------------------------------------------------------------*
*& Report ZCOND_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCOND_PRG_26.



DATA: GV_CARRID TYPE S_CARR_ID VALUE 'AA',
      GV_CONNID TYPE S_CONN_ID.


**IF NOT gv_carrid is INITIAL. 아래와 동일
IF GV_CARRID IS NOT INITIAL.
  WRITE:/ 'GV_CARRID is NOT NULL : ', GV_CARRID.
  ELSE.
  WRITE:/ 'GV_CARRID NULL'.
ENDIF.


IF GV_CARRID = 'AA' OR GV_CARRID = 'LH'.
  ELSEIF GV_CARRID = 'QF' AND GV_CONNID = '0017'.
  ELSE.
ENDIF.


CASE GV_CARRID.
  WHEN 'LH'.

  WHEN 'AA'.

  WHEN OTHERS.

ENDCASE.


*비교연산자
*EQ = Equal
*NE < > Not Equal
*LT < Less Than
*LE <= Less Equal
*GT > Greater Than
*GE >= Greater Equal
