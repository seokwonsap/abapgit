FUNCTION ZCA_MATNRSTOCK_GETLIST.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_MATERIAL) TYPE  MATNR OPTIONAL
*"     VALUE(I_PLANT) TYPE  WERKS_D OPTIONAL
*"     VALUE(I_STORELOC) TYPE  LGORT_D OPTIONAL
*"  EXPORTING
*"     VALUE(ET_ALLSTOCK) TYPE  ZCA_COMMITSTCK_TT
*"----------------------------------------------------------------------


DATA: L_MATERIAL TYPE CHAR41.

DATA :
       T_WMDVEX   TYPE TABLE OF BAPIWMDVE WITH HEADER LINE,
       T_WMDVSX   TYPE TABLE OF BAPIWMDVS WITH HEADER LINE,
       W_ALLSTOCK TYPE ZCA_COMMITSTCK_WA,
       W_SO_STOCK TYPE ZCA_MATNRSTOCK_V,
       W_WMDVEX   TYPE BAPIWMDVE,
       L_ALVQTY   TYPE BAPICM61V-WKBST,
       L_UNIT     TYPE BAPIADMM-UNIT,
       L_MATNR    TYPE MATNR18.


IF I_MATERIAL IS INITIAL.
  L_MATERIAL = '%'.
ELSE.
  CONCATENATE I_MATERIAL '%' INTO L_MATERIAL.
  TRANSLATE L_MATERIAL TO UPPER CASE.
ENDIF.

IF I_PLANT IS INITIAL.
  I_PLANT = 'A001'.
ELSE.
  TRANSLATE I_PLANT TO UPPER CASE.
ENDIF.

IF I_STORELOC IS INITIAL.
  I_STORELOC = '%'.
ELSE.
  TRANSLATE I_STORELOC TO UPPER CASE.
ENDIF.



SELECT MANDT MATNR WERKS LGORT FROM MARD INTO CORRESPONDING FIELDS OF W_SO_STOCK
                   WHERE MATNR LIKE L_MATERIAL
                   AND   WERKS LIKE I_PLANT
                   AND   LGORT LIKE I_STORELOC
                   .
    L_MATNR = W_SO_STOCK-MATNR.
    SELECT SINGLE MEINS FROM MARA INTO L_UNIT WHERE MATNR LIKE L_MATNR.
    CALL FUNCTION 'BAPI_MATERIAL_AVAILABILITY'
      EXPORTING
        PLANT                    = I_PLANT
        MATERIAL                 = L_MATNR
        UNIT                     = L_UNIT
      IMPORTING
        AV_QTY_PLT               = L_ALVQTY
      TABLES
        WMDVSX                   = T_WMDVSX
        WMDVEX                   = T_WMDVEX
              .
    W_ALLSTOCK-MANDT      = W_SO_STOCK-MANDT.
    W_ALLSTOCK-MATNR      = W_SO_STOCK-MATNR.
    W_ALLSTOCK-PLANT      = W_SO_STOCK-WERKS.
    W_ALLSTOCK-STORE_LOC  = W_SO_STOCK-LGORT.
    W_ALLSTOCK-NOW_QTY    = L_ALVQTY.

    READ TABLE T_WMDVEX INTO W_WMDVEX.
    W_ALLSTOCK-COM_QTY    = W_WMDVEX-COM_QTY.


    APPEND W_ALLSTOCK TO ET_ALLSTOCK.
    CLEAR : W_SO_STOCK,W_WMDVEX.
    REFRESH: T_WMDVEX[], T_WMDVSX[].

ENDSELECT.



ENDFUNCTION.