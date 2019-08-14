*&---------------------------------------------------------------------*
*& Include          ZALV_PRG_26O01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE STATUS_0100 OUTPUT.
 SET PF-STATUS 'S100'.
 SET TITLEBAR 'T100' WITH SY-UNAME.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module INIT_ALV OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE INIT_ALV OUTPUT.

  IF GO_CON IS INITIAL.
    CREATE OBJECT GO_CON
      EXPORTING
*        PARENT                      =
        CONTAINER_NAME              = 'AREA'
*        STYLE                       =
*        LIFETIME                    = lifetime_default
*        REPID                       =
*        DYNNR                       =
*        NO_AUTODEF_PROGID_DYNNR     =
      EXCEPTIONS
        CNTL_ERROR                  = 1
        CNTL_SYSTEM_ERROR           = 2
        CREATE_ERROR                = 3
        LIFETIME_ERROR              = 4
        LIFETIME_DYNPRO_DYNPRO_LINK = 5
        OTHERS                      = 6
        .
    IF SY-SUBRC <> 0.
*     MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*                WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
    ENDIF.


  CREATE OBJECT GO_ALV
    EXPORTING
*      I_SHELLSTYLE      = 0
*      I_LIFETIME        =
      I_PARENT          = GO_CON
*      I_APPL_EVENTS     = space
*      I_PARENTDBG       =
*      I_APPLOGPARENT    =
*      I_GRAPHICSPARENT  =
*      I_NAME            =
*      I_FCAT_COMPLETE   = SPACE

    EXCEPTIONS
      ERROR_CNTL_CREATE = 1
      ERROR_CNTL_INIT   = 2
      ERROR_CNTL_LINK   = 3
      ERROR_DP_CREATE   = 4
      OTHERS            = 5
      .
  IF SY-SUBRC <> 0.
*   MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*              WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
  ENDIF.

  PERFORM SET_VARIANT. "VARIANT의 값을 지정해주는 FORM
  PERFORM SET_LAYOUT. "LAYOUT의 값을 지정해주는 FORM
  PERFORM SET_SORT. "SORT의 값을 지정해주는 FORM
  PERFORM SET_TOOLBAR.

  CALL METHOD go_alv->set_table_for_first_display "ALV에 TABLE을 DISPLAY하기위한 메소드
    EXPORTING
      i_structure_name              = 'SFLIGHT' "정보를 가져오는 STRUCTURE의 모양
      IS_VARIANT                    = GS_VARIANT "어떤 VARIANT를 쓸 것인지 지정
      I_SAVE                        = 'A' "모든 유저가 저장 가능
      IS_LAYOUT                     = GS_LAYOUT "LAYOUT을 설정해줌
      IT_TOOLBAR_EXCLUDING          = GT_FUNC
    CHANGING
      it_outtab                     = GT_DATA "데이터베이스에서 DATA를 가져온 INTERNAL TABLE
      it_sort                       = GT_SORT "정렬 조건을 넣어줌

    EXCEPTIONS
      invalid_parameter_combination = 1
      program_error                 = 2
      too_many_lines                = 3
      others                        = 4
   .

    IF sy-subrc <> 0.
*     Implement suitable error handling here
    ENDIF.



  ENDIF.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module CLEAR_OKCODE OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE CLEAR_OKCODE OUTPUT.
  CLEAR: OK_CODE.
ENDMODULE.
