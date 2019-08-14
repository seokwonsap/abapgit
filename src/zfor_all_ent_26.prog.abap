*&---------------------------------------------------------------------*
*& Report ZFOR_ALL_ENT_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFOR_ALL_ENT_26.

"Structure 선언
DATA: BEGIN OF LS_SPFLI,
  "필드선언
        CARRID TYPE S_CARR_ID,
        CONNID TYPE S_CONN_ID,

      END OF LS_SPFLI,
      LT_SPFLI LIKE TABLE OF LS_SPFLI.
      "Internal Table 선언

DATA: LT_FLIGHT TYPE TABLE OF SFLIGHT.

"CARRID 가 'LH'인 데이터를  LT_SPFLI에 쳐넣음
SELECT CARRID CONNID INTO TABLE LT_SPFLI
  FROM SPFLI
  WHERE CARRID = 'LH'.


" 만약 LT_SPFLI가 초기값 즉 비어있지 않다면
IF LT_SPFLI IS NOT INITIAL.


  LS_SPFLI-CARRID = 'LH'.
  LS_SPFLI-CONNID = '0400'.
  APPEND LS_SPFLI TO LT_SPFLI.

  "CARRID 그다음 CONNID 순으로 정렬 함
  SORT LT_SPFLI BY CARRID CONNID.

  " LT_SPFLI의 중복 값 삭제(CARRID, CONNID를 비교)
  " 삭제를 하려면 일단 SORT가 되어있어야함 밑에 인접한 명시되어있으니 인접한 비슷한 값만 삭제하는 것!!!
  DELETE ADJACENT DUPLICATES FROM LT_SPFLI COMPARING CARRID CONNID.
  "삭제  인접한(비슷)  중복들을             비교하여

  "삭제되었으니 이제 SELECT문 ㄱㄱ
  SELECT * INTO CORRESPONDING FIELDS OF TABLE LT_FLIGHT
    FROM SFLIGHT
    FOR ALL ENTRIES IN LT_SPFLI
    WHERE CARRID = LT_SPFLI-CARRID
      AND CONNID = LT_SPFLI-CONNID
    .
ENDIF.

CL_DEMO_OUTPUT=>DISPLAY( LT_FLIGHT ).
