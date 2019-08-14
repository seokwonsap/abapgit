FUNCTION Z_BC400_26_FLIGHTLIST_GET_OPT.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_CARRID) TYPE  S_CARR_ID
*"     REFERENCE(IV_CONNID) TYPE  S_CONN_ID
*"  EXPORTING
*"     REFERENCE(ET_FLIGHTS) TYPE  BC400_T_FLIGHTS
*"  EXCEPTIONS
*"      NO_DATA
*"----------------------------------------------------------------------

DATA : LS_FLIGHT LIKE LINE OF ET_FLIGHTS.



SELECT * INTO CORRESPONDING FIELDS OF TABLE ET_FLIGHTS
  FROM SFLIGHT
  WHERE CARRID = IV_CARRID
    AND CONNID = IV_CONNID.


IF SY-SUBRC <> 0.
  RAISE NO_DATA.

ELSE.
  LOOP AT ET_FLIGHTS INTO LS_FLIGHT.
  LS_FLIGHT-PERCENTAGE = LS_FLIGHT-SEATSOCC / LS_FLIGHT-SEATSMAX * 100.


* 1번째방법-----------------------------------------
*   MODIFY TABLE ET_FLIGHTS FROM LS_FLIGHT.

* 2번째방법-----------------------------------------
*   MODIFY ET_FLIGHTS FROM LS_FLIGHT
*          INDEX SY-TABIX
*          TRANSPORTING PERCENTAGE.

* 3번째방법-----------------------------------------
   MODIFY TABLE ET_FLIGHTS FROM LS_FLIGHT
          TRANSPORTING PERCENTAGE.
* ★ 3번째 방법에서 INDEX 를 안써도 되는 이유는 LOOP문이 존재 ★
*   (루프 돌 시 인덱스 자동 ㅇㅇ)

ENDLOOP.

SORT ET_FLIGHTS BY PERCENTAGE DESCENDING.

ENDIF.


ENDFUNCTION.
