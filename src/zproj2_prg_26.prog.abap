*&---------------------------------------------------------------------*
*& Report ZPROJ2_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPROJ2_PRG_26.

      "데이터 담을 Internal Table과 WRITE 시 필요한 WA 선언
DATA: LT_SCHEDULE TYPE ZYSCHEDULE_26,
      WA_SCHEDULE LIKE LINE OF LT_SCHEDULE,

      " ZYSCHEDULE_26-FLIGHT용으로 쓸 Work Area
      WA_ZYFLIGHT LIKE LINE OF WA_SCHEDULE-FLIGHT,

      "SELECT OPTION SO_CAR의 변수 정의
      LV_CARRID TYPE SPFLI-CARRID.


"***********화면 구성***********
"SELECTION 스크린 (FRAME) 넣기
SELECTION-SCREEN BEGIN OF BLOCK BLK01 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: SO_CAR FOR LV_CARRID.
SELECTION-SCREEN END OF BLOCK BLK01.







"초기값 할당
INITIALIZATION.
  SO_CAR-SIGN = 'I'.
  SO_CAR-OPTION = 'EQ'.
  SO_CAR-LOW = 'AA'.
  SO_CAR-HIGH = ''.
  APPEND SO_CAR.
  CLEAR SO_CAR.

  SO_CAR-SIGN = 'I'.
  SO_CAR-OPTION = 'EQ'.
  SO_CAR-LOW = 'UA'.
  SO_CAR-HIGH = ''.
  APPEND SO_CAR.
  CLEAR SO_CAR.


**실행 프로그램이므로 SOS 선언
START-OF-SELECTION.


"데이터 조회 시작
"우선 SPFLI로 부터 데이터를 가져와서  WA_SCHEDULE에 맞는 데이터를 넣는다.
SELECT * INTO CORRESPONDING FIELDS OF TABLE LT_SCHEDULE
         FROM SPFLI AS A INNER JOIN SCARR AS B  "INNER 조인은 CARRNAME이 없어서 INNER JOIN
                    ON A~CARRID = B~CARRID
         WHERE A~CARRID IN SO_CAR
         .

" 검사
IF SY-SUBRC <> 0.
  MESSAGE '데이터가 없습니다.' TYPE 'I'.
ELSE.
  FORMAT COLOR = 1. "출력할 색상 : Gray_Blue

  "데이터가 있을 시 LOOP
  LOOP AT LT_SCHEDULE INTO WA_SCHEDULE.
    "동일한 조건을 바탕으로 SFLIGHT에서 데이터를 가져와서 각 WA_SCHEDULE-FLIGHT 테이블에 넣는다.
    SELECT * INTO CORRESPONDING FIELDS OF TABLE WA_SCHEDULE-FLIGHT
       FROM SFLIGHT
       WHERE  CARRID = WA_SCHEDULE-CARRID
         AND  CONNID = WA_SCHEDULE-CONNID
       .

    FORMAT INTENSIFIED ON. " Heading 영역이라서 ON
    WRITE:/ ICON_FLIGHT AS ICON, " 아이콘 출력
            WA_SCHEDULE-CARRID,
            WA_SCHEDULE-CARRNAME,
            WA_SCHEDULE-CONNID,
            WA_SCHEDULE-COUNTRYFR,
            WA_SCHEDULE-CITYFROM,
            WA_SCHEDULE-AIRPFROM,
            WA_SCHEDULE-COUNTRYTO,
            WA_SCHEDULE-CITYTO,
            WA_SCHEDULE-AIRPTO
            .
     FORMAT INTENSIFIED OFF. "내용영역이라서 OFF

     "CONNID 하나당 FLIGHT 내용을 출력해야하니 더블 루프문
     LOOP AT WA_SCHEDULE-FLIGHT INTO WA_ZYFLIGHT.
       WRITE:/ WA_ZYFLIGHT-FLDATE,
               WA_ZYFLIGHT-PRICE CURRENCY WA_ZYFLIGHT-CURRENCY,
               WA_ZYFLIGHT-CURRENCY,
               WA_ZYFLIGHT-PLANETYPE,
               WA_ZYFLIGHT-SEATSMAX,
               WA_ZYFLIGHT-SEATSOCC,
               WA_ZYFLIGHT-PAYMENTSUM
               .
     ENDLOOP.
     ULINE. " 선긋기
  ENDLOOP.
"FORMAT RESET. " 색 적용 포맷 리셋 // 만약 이후로 WRITE문 쓸 시
ENDIF.
