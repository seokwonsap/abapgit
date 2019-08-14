*&---------------------------------------------------------------------*
*& Report  BC400_RPT_REP_A
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT  ZBC400_26_REP_A.




DATA:
     GT_FLIGHTS TYPE BC400_T_FLIGHTS,
     GS_FLIGHT  TYPE BC400_S_FLIGHT,
     LS_CON TYPE BC400_S_FLIGHT-CONNID.


PARAMETERS:
     PA_CAR TYPE BC400_S_FLIGHT-CARRID.

SELECT-OPTIONS : SO_CON FOR LS_CON.




TRY.

    CALL METHOD CL_BC400_FLIGHTMODEL=>GET_FLIGHTS_RANGE
      EXPORTING
        IV_CARRID  = PA_CAR
        IT_CONNID  = SO_CON[]           " Range Table for Flight Number
      IMPORTING
        ET_FLIGHTS = GT_FLIGHTS       " Flight times
      .
    CATCH CX_BC400_NO_DATA.
      MESSAGE '데이터가 없떠용' TYPE 'I'.
      RETURN.
    CATCH CX_BC400_NO_AUTH.
ENDTRY.



SET PARAMETER ID 'CAR' FIELD pa_car.

SUBMIT ZCALLED_PRG_26
  AND RETURN.




**---------------------------------------
** ABAP 메모리 를 알아보기 위해서그럼
*EXPORT FLIGHT = GT_FLIGHTS
*  TO MEMORY ID 'ID_26'.
** ZCALLED 프로그램 안에 IMPORT 메모리 선언부분 들어있으니 실행해보면 알 수 있다.
*SUBMIT ZCALLED_PRG_26
*  WITH PA_CAR = PA_CAR
*  VIA SELECTION-SCREEN "ZCALLED의 Selection Screen에만 들어감
*  AND RETURN.
**---------------------------------------


START-OF-SELECTION.


LOOP AT GT_FLIGHTS INTO GS_FLIGHT.

IF gs_flight-PERCENTAGE >= 90.
  WRITE:/ ICON_GREEN_LIGHT AS ICON.
ELSEIF gs_flight-PERCENTAGE >= 50.
  WRITE:/ ICON_YELLOW_LIGHT AS ICON.
ELSE.
  WRITE:/ ICON_RED_LIGHT.
ENDIF.

  WRITE:   GS_FLIGHT-CARRID,
           GS_FLIGHT-CONNID,
           GS_FLIGHT-FLDATE,
           GS_FLIGHT-SEATSMAX,
           GS_FLIGHT-SEATSOCC,
           GS_FLIGHT-PERCENTAGE.

ENDLOOP.
