*&---------------------------------------------------------------------*
*& Report ZTEST_SELECT_26
*&---------------------------------------------------------------------*
*& 결과 : SELECT를 다시 할 시 기존에 있는 데이터는 사라진다.
*&---------------------------------------------------------------------*
REPORT ZTEST_SELECT_26.

* Overwrite가 아닌 걍 사라진다고 보면됨



DATA: IT_SFLIGHT TYPE TABLE OF SFLIGHT,
      WA_SFLIGHT LIKE LINE OF IT_SFLIGHT.


*처음 셀렉트 // 엄청많음
SELECT * INTO CORRESPONDING FIELDS OF TABLE IT_SFLIGHT
         FROM SBOOK.

* APPEND 해서 데이터 한개 더 추가해 봄 // + 1개
APPEND WA_SFLIGHT TO IT_SFLIGHT.


*두번째 셀렉트 시 안의 값이 Overwrite되는지? 아예 지워지고 되는지 확인하기 // 400개 조회됨
SELECT * INTO CORRESPONDING FIELDS OF TABLE IT_SFLIGHT
         FROM SFLIGHT.




WRITE:/ '완료'.
