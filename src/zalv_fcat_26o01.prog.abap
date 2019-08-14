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
*& Module CLEAR_OKCODE OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE CLEAR_OKCODE OUTPUT.
  CLEAR: OK_CODE.
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
 "        PARENT                      =
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
*        I_SHELLSTYLE      = 0
*        I_LIFETIME        =
        I_PARENT          = GO_CON
*        I_APPL_EVENTS     = space
*        I_PARENTDBG       =
*        I_APPLOGPARENT    =
*        I_GRAPHICSPARENT  =
*        I_NAME            =
*        I_FCAT_COMPLETE   = SPACE
      EXCEPTIONS
        ERROR_CNTL_CREATE = 1
        ERROR_CNTL_INIT   = 2
        ERROR_CNTL_LINK   = 3
        ERROR_DP_CREATE   = 4
        OTHERS            = 5
        .
    IF SY-SUBRC <> 0.
*     MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*                WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
    ENDIF.






  PERFORM SET_FCAT.

    SET HANDLER LCL_EVENT_HANDLER=>ON_DOUBLE_CLICK
      FOR GO_ALV.
    SET HANDLER LCL_EVENT_HANDLER=>ON_HOTSPOT_CLICK
      FOR GO_ALV.


*----------------CALL METHOD go_alv->SET_TABLE_FOR_FIRST_DISPLAY----------------*
  CALL METHOD go_alv->SET_TABLE_FOR_FIRST_DISPLAY
    EXPORTING
*      I_BUFFER_ACTIVE               =                  " Buffering Active
*      I_BYPASSING_BUFFER            =                  " Switch Off Buffer
*      I_CONSISTENCY_CHECK           =                  " Starting Consistency Check for Interface Error Recognition
      I_STRUCTURE_NAME              = 'SBOOK'                " Internal Output Table Structure Name
*      IS_VARIANT                    =                  " Layout
*      I_SAVE                        =                  " Save Layout
*      I_DEFAULT                     = 'X'              " Default Display Variant
*      IS_LAYOUT                     =                  " Layout
*      IS_PRINT                      =                  " Print Control
*      IT_SPECIAL_GROUPS             =                  " Field Groups
*      IT_TOOLBAR_EXCLUDING          =                  " Excluded Toolbar Standard Functions
*      IT_HYPERLINK                  =                  " Hyperlinks
*      IT_ALV_GRAPHICS               =                  " Table of Structure DTC_S_TC
*      IT_EXCEPT_QINFO               =                  " Table for Exception Quickinfo
*      IR_SALV_ADAPTER               =                  " Interface ALV Adapter
    CHANGING
      IT_OUTTAB                     =  GT_DATA                " Output Table
      IT_FIELDCATALOG               =  GT_FCAT               " Field Catalog
*      IT_SORT                       =                  " Sort Criteria
*      IT_FILTER                     =                  " Filter Criteria
    EXCEPTIONS
      INVALID_PARAMETER_COMBINATION = 1                " Wrong Parameter
      PROGRAM_ERROR                 = 2                " Program Errors
      TOO_MANY_LINES                = 3                " Too many Rows in Ready for Input Grid
      OTHERS                        = 4
    .

  IF SY-SUBRC <> 0.
*   MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*     WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
  ENDIF.
*----------------------------------------------END----------------------------------------------*





  ENDIF.
ENDMODULE.





*&---------------------------------------------------------------------*
*& Module STATUS_0110 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE STATUS_0110 OUTPUT.
 SET PF-STATUS 'S110'.
 SET TITLEBAR 'T110'.
ENDMODULE.
