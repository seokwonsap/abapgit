*&---------------------------------------------------------------------*
*& Include MBC410ADIAS_DYNPROTOP                                       *
*&                                                                     *
*&---------------------------------------------------------------------*

PROGRAM  SAPMBC410ADIAS_DYNPRO.
* screen structure
TABLES: SDYN_CONN, SAPLANE.

DATA:
* workarea for database read
  WA_SFLIGHT TYPE SFLIGHT,
* function code at PAI
  OK_CODE    LIKE SY-UCOMM,
* radio buttons
  VIEW VALUE 'X',
  MAINTAIN_FLIGHTS,
  MAINTAIN_BOOKINGS,

  "DYNNR 스크린 호출용
  DYNNR TYPE SY-DYNNR.
