


PROGRAM ZALV_FCAT_PRG_26.


TABLES: SCUSTOM,
        STRAVELAG.


DATA: GS_CUSTOM TYPE SCUSTOM.


DATA: BEGIN OF GS_DATA.
        INCLUDE TYPE SBOOK.
        DATA: PHONE TYPE SCUSTOM-TELEPHONE,
        CICON TYPE ICON-ID,
      END OF GS_DATA,
      GT_DATA LIKE TABLE OF GS_DATA.



DATA: GT_FCAT TYPE LVC_T_FCAT.
DATA: GO_CON TYPE REF TO CL_GUI_CUSTOM_CONTAINER,
      GO_ALV TYPE REF TO CL_GUI_ALV_GRID.



DATA: OK_CODE TYPE SY-ucomm.



SELECT-OPTIONS: SO_CAR FOR GS_DATA-CARRID DEFAULT 'AA',
                SO_CON FOR GS_DATA-CONNID.