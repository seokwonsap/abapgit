*&---------------------------------------------------------------------*
*& Report ZITAB_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZITAB_PRG_26.


* BREAK 걸어서 다 찾아보기
* 데이터 한 행을 변경 시(레코드)을 가져와서 변경하고 다시 넣어줘야함


* Append
* Insert
* Read
* Change
* Delete




* Like 다음에는 변수이름이 와야한다.
DATA:  LT_FLIGHT TYPE BC400_T_FLIGHTS,
       LS_FLIGHT LIKE LINE OF LT_FLIGHT.

LS_FLIGHT-CARRID = 'AA'.
LS_FLIGHT-CONNID = '0017'.
LS_FLIGHT-FLDATE = SY-DATUM.
LS_FLIGHT-PERCENTAGE = 50.
LS_FLIGHT-SEATSMAX = 300.
LS_FLIGHT-SEATSOCC = 150.

* 동일 데이터 3건 넣음
APPEND LS_FLIGHT TO LT_FLIGHT.

LS_FLIGHT-CARRID = 'BB'.
LS_FLIGHT-CONNID = '0064'.
LS_FLIGHT-FLDATE = SY-DATUM.
LS_FLIGHT-PERCENTAGE = 60.
LS_FLIGHT-SEATSMAX = 250.
LS_FLIGHT-SEATSOCC = 100.

APPEND LS_FLIGHT TO LT_FLIGHT.

LS_FLIGHT-CARRID = 'CC'.
LS_FLIGHT-CONNID = '0045'.
LS_FLIGHT-FLDATE = SY-DATUM.
LS_FLIGHT-PERCENTAGE = 80.
LS_FLIGHT-SEATSMAX = 350.
LS_FLIGHT-SEATSOCC = 200.


APPEND LS_FLIGHT TO LT_FLIGHT.

LS_FLIGHT-CARRID = 'DD'.
LS_FLIGHT-CONNID = '0025'.
LS_FLIGHT-FLDATE = SY-DATUM.
LS_FLIGHT-PERCENTAGE = 75.
LS_FLIGHT-SEATSMAX = 150.
LS_FLIGHT-SEATSOCC = 100.

APPEND LS_FLIGHT TO LT_FLIGHT.

LS_FLIGHT-CARRID = 'EE'.
LS_FLIGHT-CONNID = '0583'.
LS_FLIGHT-FLDATE = SY-DATUM.
LS_FLIGHT-PERCENTAGE = 66.
LS_FLIGHT-SEATSMAX = 333.
LS_FLIGHT-SEATSOCC = 222.

APPEND LS_FLIGHT TO LT_FLIGHT.



LS_FLIGHT-CARRID = 'LH'.
LS_FLIGHT-CONNID = '0400'.

INSERT LS_FLIGHT INTO TABLE LT_FLIGHT.
* 인덱스 2번에 삽입
INSERT LS_FLIGHT INTO LT_FLIGHT INDEX 2.


* 해당 Structure 싹~ 초기화 시키고오
*CLEAR: LS_FLIGHT.

* LT_FLIGHT 테이블의 LS 구조로 이루어진 인덱스 2번을 읽어옴 Index Access
READ TABLE LT_FLIGHT INTO LS_FLIGHT INDEX 2.


* Key Access
* 동일한 Attribute 값을 가진 레코드를 가져오나 다른 속성값을 가진 레코드들이 있다면
* 대게 첫번째꺼를 가져온다. 근데 장담응ㄴ 못한다 !!!
READ TABLE LT_FLIGHT INTO LS_FLIGHT
* WITH TABLE KEY 는 키 컴포넌트 하나라도 빠지면 Syntax 에러 남 ~~~
*                     WITH TABLE KEY CARRID = 'AA'
*                                    CONNID = '0017'.
*                                    FLDATE = SY-DATUM.
                     WITH KEY CARRID = 'AA'
*                              CONNID = '0017'.
                              FLDATE = SY-DATUM.


LS_FLIGHT-CARRID = 'UA'.
LS_FLIGHT-CONNID = '111'.

* 해당 인터널 테이블에 있는 2번째 데이터를 가져와서 변경
MODIFY LT_FLIGHT FROM LS_FLIGHT INDEX 2.

*삭제하기
DELETE LT_FLIGHT INDEX 2.
*DELETE LT_FLIGHT WHERE CARRID = 'AA'.

LOOP AT LT_FLIGHT INTO LS_FLIGHT FROM 1 TO 5.
*LOOP AT LT_FLIGHT INTO LS_FLIGHT WHERE CARRID = 'LH'.
  WRITE:/ LS_FLIGHT-CARRID,
          LS_FLIGHT-CONNID,
          LS_FLIGHT-FLDATE,
          LS_FLIGHT-PERCENTAGE,
          LS_FLIGHT-SEATSMAX,
          LS_FLIGHT-SEATSOCC.
  CLEAR: LS_FLIGHT.
ENDLOOP.

IF SY-SUBRC = 0.
ENDIF.





*Structure 은        TABLE OF 가 와야한당~
DATA : LT_DATA TYPE TABLE OF BC400_S_FLIGHT.



DATA : LS_INFO   TYPE BC400_S_FLIGHT,
       LT_INFO   LIKE TABLE OF LS_INFO.
