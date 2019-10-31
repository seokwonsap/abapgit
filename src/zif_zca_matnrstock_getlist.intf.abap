interface ZIF_ZCA_MATNRSTOCK_GETLIST
  public .


  types:
    MANDT type C length 000003 .
  types:
    MATNR type C length 000040 .
  types:
    WERKS_D type C length 000004 .
  types:
    LGORT_D type C length 000004 .
  types:
    LABST type P length 7  decimals 000003 .
  types:
    MNG06 type P length 7  decimals 000003 .
  types:
    begin of ZCA_COMMITSTCK_WA,
      MANDT type MANDT,
      MATNR type MATNR,
      PLANT type WERKS_D,
      STORE_LOC type LGORT_D,
      NOW_QTY type LABST,
      COM_QTY type MNG06,
    end of ZCA_COMMITSTCK_WA .
  types:
    ZCA_COMMITSTCK_TT              type standard table of ZCA_COMMITSTCK_WA              with non-unique default key .
endinterface.
