*&---------------------------------------------------------------------*
*& Report ZFIELD_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFIELD_PRG_26.


DATA : LS_DATA TYPE BC400_S_FLIGHT.

PARAMETERS : PA_CARR TYPE BC400_S_FLIGHT-CARRID,
             PA_CONN TYPE BC400_S_FLIGHT-CONNID,
             PA_FLDT TYPE BC400_S_FLIGHT-FLDATE.


*덤프 오류남
*SELECT SINGLE SEATSMAX SEATSOCC
*SELECT SINGLE CARRID CONNID FLDATE SEATSMAX SEATSOCC
SELECT SINGLE SEATSMAX SEATSOCC
  INTO  CORRESPONDING FIELDS OF LS_DATA
*  INTO LS_DATA
  FROM SFLIGHT
  WHERE CARRID = PA_CARR
    AND CONNID = PA_CONN
    AND FLDATE = PA_FLDT.

IF SY-SUBRC = 0.
  CL_DEMO_OUTPUT=>DISPLAY( LS_DATA ).
ENDIF.
