*&---------------------------------------------------------------------*
*& Report ZVIEW_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZVIEW_PRG_26.


"뷰로 조인 테스트

DATA : BEGIN OF LS_DATA,
          CARRID   TYPE S_CARRID,
          CARRNAME TYPE S_CARRNAME,
          CONNID   TYPE S_CONN_ID,
          FLDATE   TYPE S_DATE,
          SEATSMAX TYPE S_SEATSMAX,
          SEATSOCC TYPE S_SEATSOCC,
          SEATSDIF TYPE S_SEATSMAX,
        END OF LS_DATA,
        LT_DATA LIKE TABLE OF LS_DATA
          WITH NON-UNIQUE KEY CARRID CONNID FLDATE.


PARAMETERS : PA_CARR TYPE S_CARRID,
             PA_CONN TYPE S_CONN_ID.


*SELECT * INTO CORRESPONDING FIELDS OF TABLE LT_DATA
*  FROM ZVFLIGHT_26
*  WHERE CARRID = PA_CARR
*    AND CONNID = PA_CONN.


* Table 뒤에 AS 쓰면 Alias(별명)
SELECT * INTO CORRESPONDING FIELDS OF TABLE LT_DATA
  FROM SFLIGHT AS A INNER JOIN SCARR AS B
                     ON A~CARRID = B~CARRID
  WHERE A~CARRID = PA_CARR
    AND A~CONNID = PA_CONN.




CL_DEMO_OUTPUT=>DISPLAY( LT_DATA ).
