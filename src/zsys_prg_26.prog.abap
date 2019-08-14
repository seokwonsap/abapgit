*&---------------------------------------------------------------------*
*& Report ZSYS_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSYS_PRG_26.

DATA: GS_SCARR TYPE SCARR.

PARAMETERS: PA_CAR TYPE SCARR-CARRID.

*SELECT SINGLE * INTO GS_SCARR
*  FROM SCARR
*  WHERE CARRID = PA_CAR.

CALL FUNCTION 'ZGET_SCARR_26'
  EXPORTING
    IV_CARRID = PA_CAR
  IMPORTING
    ES_SCARR = GS_SCARR.

  IF SY-SUBRC = 0.

    WRITE:/ 'ID : ', GS_SCARR-CARRID.
    WRITE:/ 'NAME : ', GS_SCARR-CARRNAME.
    WRITE:/ 'CODE : ', GS_SCARR-CURRCODE.
    WRITE:/ 'MANDT : ', GS_SCARR-MANDT.
    WRITE:/ 'URL : ', GS_SCARR-URL(50).

  ELSE.
    WRITE:/ 'No Data'.
  ENDIF.
