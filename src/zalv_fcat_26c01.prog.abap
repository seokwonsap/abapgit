*&---------------------------------------------------------------------*
*& Include          ZALV_FCAT_26C01
*&---------------------------------------------------------------------*

CLASS LCL_EVENT_HANDLER DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS: ON_DOUBLE_CLICK
                  FOR EVENT DOUBLE_CLICK OF CL_GUI_ALV_GRID
      IMPORTING ES_ROW_NO E_COLUMN,
      ON_HOTSPOT_CLICK
                    FOR EVENT HOTSPOT_CLICK OF CL_GUI_ALV_GRID
        IMPORTING ES_ROW_NO E_COLUMN_ID.
ENDCLASS.

CLASS LCL_EVENT_HANDLER IMPLEMENTATION.


  METHOD ON_DOUBLE_CLICK.
  IF E_COLUMN-FIELDNAME = 'AGENCYNUM'.
      READ TABLE GT_DATA INTO GS_DATA INDEX ES_ROW_NO-ROW_ID TRANSPORTING AGENCYNUM.

       SELECT SINGLE * INTO STRAVELAG
          FROM STRAVELAG
          WHERE AGENCYNUM = GS_DATA-AGENCYNUM.


       CALL SCREEN 120
              STARTING AT 10 5.
*      MESSAGE I016(BC405_408)
*        WITH ES_ROW_NO-ROW_ID E_COLUMN-FIELDNAME.
  ENDIF.

  ENDMETHOD.

  METHOD ON_HOTSPOT_CLICK.

   "우리가 해당 셀을 눌렀을 때 해당 인덱스 값이 ES_ROW_NO-ROW_ID 여서 그 줄에 있는 값을 읽어온다.
   CLEAR: GS_DATA. " Clear를 쓴 이유는 디버그 시 GS_DATA 값을 확인하려구~ TRANSPORTING을 쓰는 방법을 몰라서 ㅜ
   READ TABLE GT_DATA INTO GS_DATA INDEX ES_ROW_NO-ROW_ID TRANSPORTING CUSTOMID.

     SELECT SINGLE * INTO SCUSTOM
        FROM SCUSTOM
        WHERE ID = GS_DATA-CUSTOMID.

     CALL SCREEN 110
            STARTING AT 10 5.
*    MESSAGE I016(BC405_408)
*      WITH ES_ROW_NO-ROW_ID E_COLUMN_ID-FIELDNAME.
  ENDMETHOD.
ENDCLASS.