*&---------------------------------------------------------------------*
*& Report  SAPBC430S_ITAB_SORTED                                       *
*&                                                                     *
*&---------------------------------------------------------------------*
*&                                                                     *
*&                                                                     *
*&---------------------------------------------------------------------*

REPORT  ZBC430_26_ITAB_SORTED.

*Replace ## by Your group- or screennumber and
*uncomment the ABAP-coding

DATA IT_FLIGHT TYPE ZIT_SFLIGHT26.
DATA WA_SFLIGHT TYPE SFLIGHT.


WRITE / 'Printout in tableorder of Database:'.

SELECT * FROM SFLIGHT
 INTO WA_SFLIGHT
 WHERE CARRID = 'JL'.
  WRITE: / WA_SFLIGHT-CARRID,
           WA_SFLIGHT-CONNID,
           WA_SFLIGHT-FLDATE,
           WA_SFLIGHT-PRICE,
           WA_SFLIGHT-CURRENCY,
           WA_SFLIGHT-PLANETYPE.
ENDSELECT.



* Extend program
ULINE.



SELECT * FROM SFLIGHT
 INTO TABLE IT_FLIGHT
 WHERE CARRID = 'JL'.
WRITE / 'Printout in tableorder of sorted ITAB:'.

LOOP AT IT_FLIGHT INTO WA_SFLIGHT.
  WRITE: / WA_SFLIGHT-CARRID,
           WA_SFLIGHT-CONNID,
           WA_SFLIGHT-FLDATE,
           WA_SFLIGHT-PRICE,
           WA_SFLIGHT-CURRENCY,
           WA_SFLIGHT-PLANETYPE.
ENDLOOP.


ULINE.

SELECT * FROM SFLIGHT
 INTO WA_SFLIGHT.
ENDSELECT.

LOOP AT IT_FLIGHT INTO WA_SFLIGHT.
  WRITE: / WA_SFLIGHT-CARRID,
           WA_SFLIGHT-CONNID,
           WA_SFLIGHT-FLDATE,
           WA_SFLIGHT-PRICE,
           WA_SFLIGHT-CURRENCY,
           WA_SFLIGHT-PLANETYPE.
 ENDLOOP.
