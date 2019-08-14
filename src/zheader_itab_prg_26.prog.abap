*&---------------------------------------------------------------------*
*& Report ZSORT_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZHEADER_ITAB_PRG_26.

DATA : GT_DATA TYPE BC400_T_FLIGHTS WITH HEADER LINE.





SELECT *
  INTO CORRESPONDING FIELDS OF TABLE GT_DATA
  FROM SFLIGHT.




LOOP AT GT_DATA.

GT_DATA-PERCENTAGE = GT_DATA-SEATSOCC / GT_DATA-SEATSMAX * 100.
MODIFY TABLE GT_DATA.

ENDLOOP.




*SORT GT_DATA BY PERCENTAGE DESCENDING
*                CARRID ASCENDING.



* 구조체 Clear
*CLEAR : GT_DATA.

* 테이블 Clear
*CLEAR : GT_DATA[].




LOOP AT GT_DATA.
  WRITE:/ GT_DATA-CARRID,
          GT_DATA-CONNID,
          GT_DATA-FLDATE,
          GT_DATA-PERCENTAGE,
          GT_DATA-SEATSMAX,
          GT_DATA-SEATSOCC.
  CLEAR: GT_DATA.
ENDLOOP.
