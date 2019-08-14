*&---------------------------------------------------------------------*
*& Report ZCALLED_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCALLED_PRG_26.


DATA: LT_SPFLI TYPE TABLE OF SPFLI,
      LS_SPFLI LIKE LINE OF LT_SPFLI.


DATA: GT_DATA TYPE BC400_T_FLIGHTS,
      GS_DATA TYPE BC400_S_FLIGHT.

PARAMETERS: PA_CAR TYPE SPFLI-CARRID.




**----------------------------------------------------
**첫번째 Program에서 가지고 있는 메모리가 들어감 실행시켜보면 해당 메모리값과 입력받은 값 두개해서 나옴
*IMPORT FLIGHT = GT_DATA
*  FROM MEMORY ID 'ID_26'.
*
*LOOP AT GT_DATA INTO GS_DATA.
*  WRITE:/ GS_DATA-CARRID,
*          GS_DATA-CONNID,
*          GS_DATA-FLDATE,
*          GS_DATA-PERCENTAGE.
*ENDLOOP.
**----------------------------------------------------


SELECT * INTO TABLE LT_SPFLI
   FROM SPFLI
  WHERE CARRID = PA_CAR.

  LOOP AT LT_SPFLI INTO LS_SPFLI.
    WRITE:/ LS_SPFLI-CARRID,
            LS_SPFLI-CONNID,
            LS_SPFLI-AIRPFROM,
            LS_SPFLI-CITYFROM,
            LS_SPFLI-CITYTO,
            LS_SPFLI-AIRPTO,
            LS_SPFLI-FLTIME,
            LS_SPFLI-ARRTIME.
 ENDLOOP.
