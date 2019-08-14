*&---------------------------------------------------------------------*
*& Include          MZBC410_SOLUTION_26E01
*&---------------------------------------------------------------------*


LOAD-OF-PROGRAM.
  GET PARAMETER ID:
    'CAR' FIELD SDYN_CONN-CARRID,
    'CON' FIELD SDYN_CONN-CONNID,
    'DAY' FIELD SDYN_CONN-FLDATE.

SELECT SINGLE *
  FROM SFLIGHT
  INTO WA_SFLIGHT
  WHERE CARRID = SDYN_CONN-CARRID
    AND CONNID = SDYN_CONN-CONNID
    AND FLDATE = SDYN_CONN-FLDATE.
