*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 2019-07-31 at 12:00:23
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZPARTNER26......................................*
TABLES: ZPARTNER26, *ZPARTNER26. "view work areas
CONTROLS: TCTRL_ZPARTNER26
TYPE TABLEVIEW USING SCREEN '0100'.
DATA: BEGIN OF STATUS_ZPARTNER26. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZPARTNER26.
* Table for entries selected to show on screen
DATA: BEGIN OF ZPARTNER26_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZPARTNER26.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZPARTNER26_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZPARTNER26_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZPARTNER26.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZPARTNER26_TOTAL.

*.........table declarations:.................................*
TABLES: SBUSPART                       .
TABLES: STRAVELAG                      .
TABLES: T000                           .
