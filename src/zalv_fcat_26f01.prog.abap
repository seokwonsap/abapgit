*&---------------------------------------------------------------------*
*& Include          ZALV_PRG_26F01
*&---------------------------------------------------------------------*





*&---------------------------------------------------------------------*
*& Form GET_DATA
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM GET_DATA .

  SELECT *
    INTO CORRESPONDING FIELDS OF TABLE GT_DATA
    FROM SBOOK
    WHERE CARRID IN SO_CAR
      AND CONNID IN SO_CON.





  LOOP AT GT_DATA INTO GS_DATA.

    SELECT SINGLE TELEPHONE INTO GS_DATA-PHONE
      FROM SCUSTOM
      WHERE ID = GS_DATA-CUSTOMID.


    IF GS_DATA-CANCELLED = 'X'.
      GS_DATA-CICON = ICON_INCOMPLETE.
    ENDIF.

    MODIFY GT_DATA FROM GS_DATA.
  ENDLOOP.
ENDFORM.







*&---------------------------------------------------------------------*
*& Form SET_FCAT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM SET_FCAT .

  DATA: LS_FCAT TYPE LVC_S_FCAT.

  LS_FCAT-FIELDNAME = 'PHONE'.
  LS_FCAT-REF_TABLE = 'SCUSTOM'.
  LS_FCAT-REF_FIELD = 'TELEPHONE'.
  LS_FCAT-COL_POS   = 4. "Column Position
  APPEND LS_FCAT TO GT_FCAT.
  CLEAR: LS_FCAT.



  LS_FCAT-FIELDNAME = 'CICON'.
  LS_FCAT-ICON = 'X'.
  LS_FCAT-COLTEXT = 'CANCELLED'.
  APPEND LS_FCAT TO GT_FCAT.
  CLEAR: LS_FCAT.



  LS_FCAT-FIELDNAME = 'CANCELLED'.
  LS_FCAT-NO_OUT = 'X'. " DO NOT DISPLAY
  APPEND LS_FCAT TO GT_FCAT.
  CLEAR: LS_FCAT.


  LS_FCAT-FIELDNAME = 'CUSTOMID'. "필드명이 CUSTOMID인 필드의 값을 클릭하면
  LS_FCAT-HOTSPOT = 'X'. "hotspot 이벤트가 발생하도록 함
  APPEND LS_FCAT TO GT_FCAT.
  CLEAR: LS_FCAT.


ENDFORM.
