*&---------------------------------------------------------------------*
*& Include MZBC410_SOLUTION_26TOP                   - Module Pool      SAPMZBC410_SOLUTION_26
*&---------------------------------------------------------------------*
PROGRAM SAPMZBC410_SOLUTION_26.

TABLES: SDYN_CONN,
        SCARR.

DATA : WA_SFLIGHT TYPE SFLIGHT.

DATA: OK_CODE TYPE SY-UCOMM,
      IO_COMMAND TYPE C,
      GV_MODE TYPE CHAR1 VALUE 'D' ,  "수정이가능하게끔 D나 C로 구분용
      GV_ON TYPE CHAR2 VALUE 'ON',
      GV_MOD TYPE CHAR3,  "CRT넣는용
      ST_ICON1 TYPE ICONS-TEXT.


* radio buttons
DATA:  view VALUE 'X',
        maintain_flights,
        maintain_bookings.
