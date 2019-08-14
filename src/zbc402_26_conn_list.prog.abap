*&---------------------------------------------------------------------*
*& Report  BC402_PCt_CONN_LIST
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  ZBC402_26_CONN_LIST MESSAGE-ID BC402.

TYPES: BEGIN OF GTY_S_CONN,
        CARRID TYPE SPFLI-CARRID,
        CONNID TYPE SPFLI-CONNID,
        CITYFROM TYPE SPFLI-CITYFROM,
        CITYTO TYPE SPFLI-CITYTO,
        DEPTIME TYPE SPFLI-DEPTIME,
        ARRTIME TYPE SPFLI-ARRTIME,
        PERIOD TYPE SPFLI-PERIOD,
      END OF GTY_S_CONN.

TYPES GTY_T_CONN TYPE STANDARD TABLE OF GTY_S_CONN
                 WITH NON-UNIQUE DEFAULT KEY.

DATA GT_CONN TYPE GTY_T_CONN.

DATA GV_MSG TYPE STRING.

DATA: GO_ALV TYPE REF TO CL_SALV_TABLE,
      GO_EVT TYPE REF TO CL_SALV_EVENTS_TABLE,
      GX_MSG TYPE REF TO CX_SALV_MSG.

*----------------------------------------------------------------------*
*       CLASS lcl_handler DEFINITION
*----------------------------------------------------------------------*
*       LCL 핸들러 정의 부분
*----------------------------------------------------------------------*
CLASS LCL_HANDLER DEFINITION.

  PUBLIC SECTION.

    " 더블클릭 할 시 해당 더블 클릭한 행의 데이터를 IMPROTING하여 더블클릭 이벤트로 데이터 넣음
    CLASS-METHODS:
          ON_DOUBLE_CLICK FOR EVENT DOUBLE_CLICK
                                 OF IF_SALV_EVENTS_ACTIONS_TABLE
                          IMPORTING ROW COLUMN.

ENDCLASS.                    "lcl_handler DEFINITION

*----------------------------------------------------------------------*
*       CLASS lcl_handler IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS LCL_HANDLER IMPLEMENTATION.

  METHOD ON_DOUBLE_CLICK.

    "LS_CONN이라는 스트럭쳐 선언
    DATA LS_CONN LIKE LINE OF GT_CONN.

    " GT_CONN 테이블 읽어서 LS_CONN 스트럭쳐에 넣음
    READ TABLE GT_CONN INTO LS_CONN INDEX ROW.

    CASE COLUMN.

      " CARRID 부분을 클릭 했을 때
      WHEN 'CARRID'.
        " BC402_INS_FLIGHT_LIST_OSQL 프로그램으로 SUBMIT
        SUBMIT BC402_INS_FLIGHT_LIST_OSQL
          "해당 프로그램에서 필요로 하는 파라미터에 LS_CONN 구조체에 있는 값을 넣어줌
           WITH: PA_CAR = LS_CONN-CARRID
           WITH: SO_CON = LS_CONN-CONNID
           AND RETURN "조회가 끝나고 뒤로 갈 시 아까 표시되는 ALV GRID로 돌아감
           .

      WHEN OTHERS.

    ENDCASE.

  ENDMETHOD.                    "on_double_click

ENDCLASS.                    "lcl_handler IMPLEMENTATION


START-OF-SELECTION.

  SELECT CARRID CONNID CITYFROM CITYTO
         DEPTIME ARRTIME PERIOD
    FROM SPFLI
    INTO TABLE GT_CONN.

  TRY.
      CALL METHOD CL_SALV_TABLE=>FACTORY
        IMPORTING
          R_SALV_TABLE = GO_ALV
        CHANGING
          T_TABLE      = GT_CONN.
    CATCH CX_SALV_MSG INTO GX_MSG.
      GV_MSG = GX_MSG->GET_TEXT( ).
      MESSAGE GV_MSG TYPE 'E'.
  ENDTRY.

  GO_EVT = GO_ALV->GET_EVENT( ).

  SET HANDLER LCL_HANDLER=>ON_DOUBLE_CLICK
          FOR GO_EVT.

  GO_ALV->DISPLAY( ).
