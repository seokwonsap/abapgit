interface ZIF_ZCA_SALESORDER_GETLIST9
  public .


  types:
    MANDT type C length 000003 .
  types:
    VBELN_VA type C length 000010 .
  types:
    POSNR_VA type N length 000006 .
  types:
    MATNR type C length 000040 .
  types:
    ARKTX type C length 000040 .
  types:
    AUART type C length 000004 .
  types:
    KWMENG type P length 8  decimals 000003 .
  types:
    BSTNK type C length 000020 .
  types:
    FAKSK type C length 000002 .
  types:
    LIFSK type C length 000002 .
  types:
    KUNAG type C length 000010 .
  types:
    ERNAM type C length 000012 .
  types:
    KURST type C length 000004 .
  types:
    LSMENG type P length 8  decimals 000003 .
  types:
    MEINS type C length 000003 .
  types:
    NETPR type P length 6  decimals 000002 .
  types:
    KPEIN type P length 3  decimals 000000 .
  types:
    KMEIN type C length 000003 .
  types:
    NETWR_AP type P length 8  decimals 000002 .
  types:
    SPART type C length 000002 .
  types:
    UVALL_UK type C length 000001 .
  types:
    VKORG type C length 000004 .
  types:
    VRKME type C length 000003 .
  types:
    VSTEL type C length 000004 .
  types:
    VTWEG type C length 000002 .
  types:
    WAERK type C length 000005 .
  types:
    WERKS_EXT type C length 000004 .
  types:
    LGORT_D type C length 000004 .
  types:
    AUGRU type C length 000003 .
  types:
    ABGRU_VA type C length 000002 .
  types:
    begin of ZCA_SALESORDER_V,
      MANDT type MANDT,
      SD_DOC type VBELN_VA,
      ITM_NUMBER type POSNR_VA,
      MATERIAL type MATNR,
      SHORT_TEXT type ARKTX,
      DOC_TYPE type AUART,
      DOC_DATE type DATS,
      REQ_QTY type KWMENG,
      REQ_DATE type DATS,
      PURCH_NO type BSTNK,
      VALID_FROM type DATS,
      VALID_TO type DATS,
      BILL_BLOCK type FAKSK,
      DLV_BLOCK type LIFSK,
      SOLD_TO type KUNAG,
      NAME type ERNAM,
      EXCHG_RATE type KURST,
      DLV_QTY type LSMENG,
      BASE_UOM type MEINS,
      NET_PRICE type NETPR,
      COND_P_UNT type KPEIN,
      COND_UNIT type KMEIN,
      NET_VALUE type NETWR_AP,
      DIVISION type SPART,
      DOC_STATUS type UVALL_UK,
      SALES_ORG type VKORG,
      SALES_UNIT type VRKME,
      SHIP_POINT type VSTEL,
      DISTR_CHAN type VTWEG,
      GI_DATE type DATS,
      CURRENCY type WAERK,
      PLANT type WERKS_EXT,
      STORE_LOC type LGORT_D,
      ORD_REASON type AUGRU,
      REASON_REJ type ABGRU_VA,
      B_UOM_ISO type MEINS,
      CD_UNT_ISO type KMEIN,
      S_UNIT_ISO type VRKME,
      CURR_ISO type WAERK,
      PURCH_NO_C type BSTNK,
    end of ZCA_SALESORDER_V .
  types:
    ZCA_SALESORDER_TT              type standard table of ZCA_SALESORDER_V               with non-unique default key .
  types:
    KUNNR type C length 000010 .
  types:
    BAPISIGN type C length 000001 .
  types:
    BAPIOPTION type C length 000002 .
  types:
    begin of ZCA_DOCDATE_WA,
      SIGN type BAPISIGN,
      OPTION type BAPIOPTION,
      SALES_DATE_LOW type DATS,
      SALES_DATE_HIGH type DATS,
    end of ZCA_DOCDATE_WA .
  types:
    POSNR type N length 000006 .
  types:
    UVALL type C length 000001 .
  types:
    VBELN type C length 000010 .
  types:
    ZCA_DOCDATE_TT                 type standard table of ZCA_DOCDATE_WA                 with non-unique default key .
endinterface.
