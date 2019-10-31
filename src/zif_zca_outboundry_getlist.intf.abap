interface ZIF_ZCA_OUTBOUNDRY_GETLIST
  public .


  types:
    MANDT type C length 000003 .
  types:
    VGBEL type C length 000010 .
  types:
    VBELN_VL type C length 000010 .
  types:
    POSNR_VL type N length 000006 .
  types:
    VSTEL type C length 000004 .
  types:
    WERKS_D type C length 000004 .
  types:
    MATNR type C length 000040 .
  types:
    ARKTX type C length 000040 .
  types:
    EMATN type C length 000040 .
  types:
    LFIMG type P length 7  decimals 000003 .
  types:
    VRKME type C length 000003 .
  types:
    MEINS type C length 000003 .
  types:
    NTGEW_15 type P length 8  decimals 000003 .
  types:
    GEWEI type C length 000003 .
  types:
    FKSTK type C length 000001 .
  types:
    GBSTK type C length 000001 .
  types:
    KOSTK type C length 000001 .
  types:
    WBSTK type C length 000001 .
  types:
    KUNWE type C length 000010 .
  types:
    KUNAG type C length 000010 .
  types:
    NETWR_AK type P length 8  decimals 000002 .
  types:
    WAERK type C length 000005 .
  types:
    NETWR_AP type P length 8  decimals 000002 .
  types:
    SPSTG type C length 000001 .
  types:
    FAKSK type C length 000002 .
  types:
    LIFSK type C length 000002 .
  types:
    begin of ZCA_OUTBOUNDRY_V,
      MANDT type MANDT,
      SD_DOC type VGBEL,
      DL_DOC type VBELN_VL,
      DL_NUM type POSNR_VL,
      SHIP_POINT type VSTEL,
      PLANT type WERKS_D,
      MATERIAL type MATNR,
      SHORT_TEXT type ARKTX,
      EMATN type EMATN,
      DLV_QTY type LFIMG,
      UNIT type VRKME,
      BASE_UOM type MEINS,
      WEIGHT type NTGEW_15,
      WEIGHT_UNIT type GEWEI,
      DOC_DATE type DATS,
      BILL_STATUS type FKSTK,
      OALL_STATUS type GBSTK,
      PICK_STATUS type KOSTK,
      GOOD_STATUS type WBSTK,
      SHIP_TO type KUNWE,
      SOLD_TO type KUNAG,
      NET_VALUE type NETWR_AK,
      NET_CURR type WAERK,
      ITM_VALUE type NETWR_AP,
      ITM_CURR type WAERK,
      A_DLV_QTY type LFIMG,
      GM_DATE type DATS,
      ABLK_STATUS type SPSTG,
      BBLK_STATUS type FAKSK,
      DBLV_STATUS type LIFSK,
    end of ZCA_OUTBOUNDRY_V .
  types:
    ZCA_OUTBOUNDRY_TT              type standard table of ZCA_OUTBOUNDRY_V               with non-unique default key .
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
    VBELN type C length 000010 .
  types:
    ZCA_DOCDATE_TT                 type standard table of ZCA_DOCDATE_WA                 with non-unique default key .
endinterface.
