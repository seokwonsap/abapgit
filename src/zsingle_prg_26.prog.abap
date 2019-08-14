*&---------------------------------------------------------------------*
*& Report ZSINGLE_PRG_26
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZSINGLE_PRG_26.

DATA: LS_SCARR TYPE SCARR.

PARAMETERS: PA_CAR TYPE SCARR-CARRID.

SELECT SINGLE *
    INTO LS_SCARR
    FROM SCARR
    WHERE CARRID = PA_CAR.

CL_DEMO_OUTPUT=>DISPLAY( LS_SCARR ).
