REPORT ZDEMO_PICTURE_IN_HTML.

CLASS PICTURE_DEMO DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS: MAIN1, MAIN2.
  PRIVATE SECTION.
    TYPES: HTML     TYPE C LENGTH 255,
           HTML_TAB TYPE STANDARD TABLE OF HTML WITH EMPTY KEY.
    TYPES: PICT_LINE(1022) TYPE X,
           PICT_TAB        TYPE STANDARD TABLE OF PICT_LINE
                                WITH EMPTY KEY.
    CLASS-METHODS GET_PICT_TAB
      IMPORTING
        MIME_URL        TYPE CSEQUENCE
      RETURNING
        VALUE(PICT_TAB) TYPE PICT_TAB.
ENDCLASS.

CLASS PICTURE_DEMO IMPLEMENTATION.
  METHOD MAIN1.
    DATA HTML_URL TYPE C LENGTH 255.
    DATA PICT_URL TYPE C LENGTH 255.

    DATA(CUSTOM_CONTAINER) = NEW
      CL_GUI_CUSTOM_CONTAINER( CONTAINER_NAME = 'CUSTOM_CONTAINER1' ).
    DATA(HTML_CONTROL) = NEW
     CL_GUI_HTML_VIEWER( PARENT = CUSTOM_CONTAINER ).

    DATA(PICT_TAB) = GET_PICT_TAB(
      MIME_URL = '/SAP/PUBLIC/BC/ABAP/mime_demo/ABAP_Docu_Logo.gif' ).
    HTML_CONTROL->LOAD_DATA(
      EXPORTING
        URL          = 'picture_url'
        TYPE         = 'image'
        SUBTYPE      = '.gif'
      IMPORTING
        ASSIGNED_URL = PICT_URL
      CHANGING
        DATA_TABLE   = PICT_TAB ).

    DATA(HTML_TAB) = VALUE HTML_TAB(
      ( '<html><body><basefont face="arial">' )
      ( 'Picture with CL_GUI_HTML_VIEWER<br><br>' )
      ( '<img src="https://t1.daumcdn.net/cfile/tistory/992A07355C0D605507">' )
      ( '</body></html>' ) ).
    HTML_CONTROL->LOAD_DATA(
      IMPORTING
        ASSIGNED_URL = HTML_URL
      CHANGING
        DATA_TABLE   = HTML_TAB ).

    HTML_CONTROL->SHOW_URL(
       EXPORTING
         URL = HTML_URL ).
  ENDMETHOD.

  METHOD MAIN2.
    DATA(CUSTOM_CONTAINER) = NEW
      CL_GUI_CUSTOM_CONTAINER( CONTAINER_NAME = 'CUSTOM_CONTAINER2' ).

    DATA(PICT_TAB) = GET_PICT_TAB(
      MIME_URL = '/SAP/PUBLIC/BC/ABAP/mime_demo/ABAP_Docu_Logo.gif' ).
    DATA(EXT_DATA) =
      VALUE CL_ABAP_BROWSER=>LOAD_TAB( ( NAME = 'PICT.GIF'
                                         TYPE = 'image'
                                         DREF = REF #( PICT_TAB ) ) ).

    DATA(HTML_TAB) = VALUE CL_ABAP_BROWSER=>HTML_TABLE(
      ( '<html><body><basefont face="arial">' )
      ( 'Picture with CL_ABAP_BROWSER<br><br>' )
      ( '<img src="PICT.GIF">' )
      ( '</body></html>' ) ).

    CL_ABAP_BROWSER=>SHOW_HTML( HTML = HTML_TAB
                                CONTAINER = CUSTOM_CONTAINER
                                DATA_TABLE  = EXT_DATA ).
  ENDMETHOD.

  METHOD GET_PICT_TAB.
    CL_MIME_REPOSITORY_API=>GET_API( )->GET(
      EXPORTING I_URL = MIME_URL
      IMPORTING E_CONTENT = DATA(PICT_WA)
      EXCEPTIONS OTHERS = 4 ).
    IF SY-SUBRC = 4.
      RETURN.
    ENDIF.
    PICT_TAB =
      VALUE #( LET L1 = XSTRLEN( PICT_WA ) L2 = L1 - 1022 IN
               FOR J = 0 THEN J + 1022  UNTIL J >= L1
                 ( COND #( WHEN J <= L2 THEN
                                PICT_WA+J(1022)
                           ELSE PICT_WA+J ) ) ).
  ENDMETHOD.
ENDCLASS.

INCLUDE ZPICTURE_IN_HTML_26_O01.
