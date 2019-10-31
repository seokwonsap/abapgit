interface ZIF_ZCA_BILLINGDOC_GETLIST
  public .


  types:
    MANDT type C length 000003 .
  types:
    VBELN_VF type C length 000010 .
  types:
    POSNR_VF type N length 000006 .
  types:
    VGBEL type C length 000010 .
  types:
    VGPOS type N length 000006 .
  types:
    FKART type C length 000004 .
  types:
    BUKRS type C length 000004 .
  types:
    VKORG type C length 000004 .
  types:
    VTWEG type C length 000002 .
  types:
    KUNRG type C length 000010 .
  types:
    KUNAG type C length 000010 .
  types:
    MATNR type C length 000040 .
  types:
    ARKTX type C length 000040 .
  types:
    FKIMG type P length 7  decimals 000003 .
  types:
    VRKME type C length 000003 .
  types:
    NETWR type P length 8  decimals 000002 .
  types:
    NETWR_FP type P length 8  decimals 000002 .
  types:
    WAERK type C length 000005 .
  types:
    GBSTK type C length 000001 .
  types:
    RELIK type C length 000001 .
  types:
    LLAND type C length 000003 .
  types:
    REGIO type C length 000003 .
  types:
    begin of ZCA_BILLINGDOC_V,
      MANDT type MANDT,
      BL_DOC type VBELN_VF,
      BL_NUM type POSNR_VF,
      DL_DOC type VGBEL,
      DL_NUM type VGPOS,
      SD_DOC type VGBEL,
      SD_NUM type VGPOS,
      BILL_TYPE type FKART,
      DOC_DATE type DATS,
      BILL_DATE type DATS,
      COMPANY type BUKRS,
      SALES_ORG type VKORG,
      DIST_CHN type VTWEG,
      PAYER type KUNRG,
      SOLD_TO type KUNAG,
      MATNR type MATNR,
      DESCRIPTION type ARKTX,
      AQTY type FKIMG,
      UNIT type VRKME,
      NETVALUE type NETWR,
      ITMVALUE type NETWR_FP,
      CURRENCY type WAERK,
      OALL_STATUS type GBSTK,
      INVC_STATUS type RELIK,
      COUNTRY type LLAND,
      REGION type REGIO,
    end of ZCA_BILLINGDOC_V .
  types:
    ZCA_BILLINGDOC_TT              type standard table of ZCA_BILLINGDOC_V               with non-unique default key .
  types:
    VBELN type C length 000010 .
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
    ZCA_DOCDATE_TT                 type standard table of ZCA_DOCDATE_WA                 with non-unique default key .
endinterface.
