*&---------------------------------------------------------------------*
*& Report ZSORT_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSORT_PRG_26.

DATA : GT_DATA TYPE BC400_T_FLIGHTS,
       GS_DATA LIKE LINE OF GT_DATA.

SELECT *
  INTO CORRESPONDING FIELDS OF TABLE GT_DATA
  FROM SFLIGHT.

LOOP AT GT_DATA INTO GS_DATA.

GS_DATA-PERCENTAGE = GS_DATA-SEATSOCC / GS_DATA-SEATSMAX * 100.

MODIFY TABLE GT_DATA FROM GS_DATA.

ENDLOOP.

SORT GT_DATA BY PERCENTAGE DESCENDING
                CARRID ASCENDING.


LOOP AT GT_DATA INTO GS_DATA.
  WRITE:/ GS_DATA-CARRID,
          GS_DATA-CONNID,
          GS_DATA-FLDATE,
          GS_DATA-PERCENTAGE,
          GS_DATA-SEATSMAX,
          GS_DATA-SEATSOCC.
  CLEAR: GS_DATA.
ENDLOOP.
