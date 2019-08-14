*&---------------------------------------------------------------------*
*& Report ZDATA_OBJ_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDATA_OBJ_PRG_26.

TYPES TV_PERC TYPE P LENGTH 3 DECIMALS 2.


**G Global
**L Local
**T Internal Table
**S Structure
**V Variable



**위로 올라갈수록 ㅇㅇ
**Element
**Structure
**(Internal) Table



DATA: GV_PERC TYPE TV_PERC,
      GV_NUM1 TYPE I VALUE 17,
      GV_NUM2 LIKE GV_NUM1,
      GV_CITY TYPE C LENGTH 15,
      GV_CARRID TYPE S_CARR_ID,
      GV_CONNID TYPE S_CONN_ID.
