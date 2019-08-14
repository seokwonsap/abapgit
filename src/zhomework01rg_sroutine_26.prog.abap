*&---------------------------------------------------------------------*
*& Report ZHOMEWORK01RG_S_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZHOMEWORK01RG_SROUTINE_26.


*파라미터 3개 선언
PARAMETERS: PA_CAR TYPE SBOOK-CARRID,
            PA_CON TYPE SBOOK-CONNID,
            PA_FLD TYPE SBOOK-FLDATE.

PERFORM SBOOK_SEARCH USING PA_CAR
                        PA_CON
                        PA_FLD.




* 기존 SBOOK 타입에다가 추가로 사용할 필드 선언
TYPES: BEGIN OF TS_BOOK.
  INCLUDE TYPE SBOOK.
  TYPES : CARRNAME TYPE SCARR-CARRNAME,
          NAME  TYPE SCUSTOM-NAME,
          TELEPHONE TYPE SCUSTOM-TELEPHONE,
          DAYS TYPE INT4,
END OF TS_BOOK.


DATA: IT_BOOK TYPE TABLE OF TS_BOOK,
      WA_BOOK LIKE LINE OF IT_BOOK.


FORM SBOOK_SEARCH  USING VALUE(PA_CAR) TYPE SBOOK-CARRID
                         VALUE(PA_CON) TYPE SBOOK-CONNID
                         VALUE(PA_FLD) TYPE SBOOK-FLDATE
                         .

  SELECT * INTO CORRESPONDING FIELDS OF WA_BOOK
    FROM SBOOK INNER JOIN SCARR "SCARR 이너조인
                ON SBOOK~CARRID = SCARR~CARRID
               INNER JOIN SCUSTOM " SCUSTOM 이너조인
                ON SBOOK~CUSTOMID = SCUSTOM~ID
    WHERE SBOOK~CARRID = PA_CAR
      AND SBOOK~CONNID = PA_CON
      AND SBOOK~FLDATE = PA_FLD.


  CALL FUNCTION 'HR_99S_INTERVAL_BETWEEN_DATES'
    EXPORTING
      BEGDA     =  WA_BOOK-ORDER_DATE     " begin date
      ENDDA     =  WA_BOOK-FLDATE         " end date
      TAB_MODE  = ' '                     " Mode for tab of months
    IMPORTING
      DAYS      = WA_BOOK-DAYS            " number of days
    .

  APPEND WA_BOOK TO IT_BOOK.

  ENDSELECT.




*  예약 정보가 없다면
  IF SY-SUBRC <> 0.
    MESSAGE '예약 정보가 존재하지 않습니다.' TYPE 'I'.
*  예약 정보가 있다면 출력한다.
  ELSE.
    LOOP AT IT_BOOK INTO WA_BOOK.
    WRITE:/ WA_BOOK-CARRID,
          WA_BOOK-CARRNAME,
          WA_BOOK-CONNID,
          WA_BOOK-FLDATE,
          WA_BOOK-BOOKID,
          WA_BOOK-CUSTOMID,
          WA_BOOK-NAME,
          WA_BOOK-TELEPHONE,
          WA_BOOK-CUSTTYPE,"LOCCURAM은 통화 LOCCURKEY를 바탕으로 출력
          WA_BOOK-LOCCURAM CURRENCY WA_BOOK-LOCCURKEY,
          WA_BOOK-LOCCURKEY,
          WA_BOOK-ORDER_DATE,
          WA_BOOK-DAYS,
          WA_BOOK-CANCELLED.
  ENDLOOP.
  ENDIF.

ENDFORM.
