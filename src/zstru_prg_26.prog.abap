*&---------------------------------------------------------------------*
*& Report ZSTRU_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSTRU_PRG_26.



TYPES : BEGIN OF TS_INFO,
          CARRID TYPE S_CARR_ID,
          CARRNAME TYPE S_CARRNAME,
          CONNID TYPE S_CONN_ID,
          FLDATE TYPE S_DATE,
          PERCENTAGE TYPE P LENGTH 3 DECIMALS 2,
        END OF TS_INFO.

*모양
*ㅣ--------------------------------------------------ㅣ
*ㅣ carrid / carrname / connid / fldate / percentage ㅣ
*ㅣ--------------------------------------------------ㅣ
*ㅣ        /          /        /        /            ㅣ
*ㅣ--------------------------------------------------/

DATA: GS_FLIGHT TYPE BC400_S_FLIGHT. "structure 타입으로 변수를 선언








DATA : GS_INFO TYPE TS_INFO.
GS_FLIGHT-CARRID = 'AA'.
GS_FLIGHT-CONNID = '0017'.
GS_FLIGHT-FLDATE = SY-DATUM.
gs_flight-SEATSMAX = 300.
GS_FLIGHT-SEATSOCC = 150.
GS_FLIGHT-PERCENTAGE = '50'.


MOVE-CORRESPONDING GS_FLIGHT TO GS_INFO.



WRITE:/ GS_FLIGHT-CARRID,
        GS_FLIGHT-CONNID,
        GS_FLIGHT-FLDATE,
        gs_flight-SEATSMAX,
        GS_FLIGHT-SEATSOCC,
        GS_FLIGHT-PERCENTAGE.


*ㅣ------------------------------------------------------------ㅣ se11에서 확인가능
*ㅣ carrid / connid / fldate / seatsmax / seatsocc / percentageㅣ
*ㅣ------------------------------------------------------------ㅣ
*ㅣ  aa    /  0017  /        /          /          /           ㅣ
*ㅣ------------------------------------------------------------ㅣ

IF SY-SUBRC = 0.

ENDIF.
