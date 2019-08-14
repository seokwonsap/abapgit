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

  DATA: LS_COL TYPE LVC_S_SCOL.
  SELECT *
    INTO CORRESPONDING FIELDS OF TABLE GT_DATA
    FROM SFLIGHT
    WHERE CARRID IN SO_CAR
      AND CONNID IN SO_CON.


     LOOP AT GT_DATA INTO GS_DATA.
      IF GS_DATA-SEATSOCC < 50. "남은 자리가 50자리 이하면
        GS_DATA-LIGHT = 1. "LIGHT 에 1을 넣어줌
      ELSEIF GS_DATA-SEATSOCC < 150. "50이상 150이하이면
        GS_DATA-LIGHT = 2. "LIGHT에 2를 넣어줌
      ELSE. "나머지는
        GS_DATA-LIGHT = 3. "3을 넣어줌
      ENDIF.

      IF GS_DATA-SEATSOCC_F = 0.
        GS_DATA-COLOR = 'C' && COL_NEGATIVE && '10'.
      ENDIF.

      IF GS_DATA-PLANETYPE = '747-400'.
        LS_COL-FNAME = 'PLANETYPE'.
        LS_COL-COLOR-COL = COL_TOTAL.
        LS_COL-COLOR-INT = 1.
        LS_COL-COLOR-INV = 0.
        APPEND LS_COL TO GS_DATA-ITCOL.
      ENDIF.

      MODIFY GT_DATA FROM GS_DATA.
    ENDLOOP.

ENDFORM.


*&---------------------------------------------------------------------*
*& Form SET_VARIANT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_variant . "VARIANT안의 값을 채워줌
  GS_VARIANT-report = SY-CPROG.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form SET_LAYOUT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_layout .
  GS_LAYOUT-GRID_TITLE = 'ALV GRID TITLE'. "ALV GRID의 TITLE 설정
  GS_LAYOUT-ZEBRA = 'X'. "무늬 설정(줄마다 색깔이 번갈아서 나옴)
  GS_LAYOUT-cwidth_opt = 'X'. "너비가 자동으로 조정되게 설정
*  GS_LAYOUT-NO_TOOLBAR = 'X'. "툴바를 안보이게 설정해줌
*  GS_LAYOUT-NO_HEADERS = 'X'. "HEADER를 안보이게 설정해줌
  GS_LAYOUT-SEL_MODE = 'A'. "COLUMN과 ROW를 어떤 형태로 누르게 해줄것인가 A,B,C,D가능(셀 선택방법)
  GS_LAYOUT-EXCP_FNAME = 'LIGHT'. "추가로 넣어줄 EXCEPTION 필드의 이름을 입력(신호등)
  GS_LAYOUT-INFO_FNAME = 'COLOR'.
  GS_LAYOUT-CTAB_FNAME = 'ITCOL'.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form SET_SORT
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM set_sort .
  DATA: LS_SORT TYPE LVC_S_SORT. "SORT를 어떻게 할 것인지 한줄씩 넣어야하므로 선언

  LS_SORT-FIELDNAME = 'CARRID'. "필드 이름이 CARRID 인 필드에 의해서
  APPEND LS_SORT TO GT_SORT. "기본값(오름차순)으로 정렬
  CLEAR: LS_SORT.
  LS_SORT-FIELDNAME = 'FLDATE'. "FLDATE 필드에 의해서는
  LS_SORT-DOWN = 'X'. "내림차순으로 정렬
  APPEND LS_SORT TO GT_SORT.
ENDFORM.





*&---------------------------------------------------------------------*
*& Form SET_TOOLBAR
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM SET_TOOLBAR .
  APPEND CL_GUI_ALV_GRID=>MC_FC_FILTER TO GT_FUNC.
  APPEND CL_GUI_ALV_GRID=>MC_MB_SUM TO GT_FUNC.
  APPEND CL_GUI_ALV_GRID=>MC_FC_DETAIL TO GT_FUNC.
ENDFORM.
