interface ZIF_ZCA_CREDITSHOW_GETLIST
  public .


  types:
    MANDT type C length 000003 .
  types:
    CTLPC_CM type C length 000003 .
  types:
    CHAR1 type C length 000001 .
  types:
    KUNNR type C length 000010 .
  types:
    KKBER type C length 000004 .
  types:
    UKM_CREDIT_SGMNT type C length 000010 .
  types:
    KLIMK type P length 8  decimals 000002 .
  types:
    UKM_CREDIT_LIMIT type P length 8  decimals 000002 .
  types:
    SKFOR type P length 8  decimals 000002 .
  types:
    WAERS type C length 000005 .
  types:
    CASHA type P length 7  decimals 000002 .
  types:
    CASHC type C length 000005 .
  types:
    begin of ZCA_CREDITSHOW_WA,
      MANDT type MANDT,
      RISK type CTLPC_CM,
      STATUS type CHAR1,
      CUSTOMER type KUNNR,
      CTL_AREA type KKBER,
      SEGMENT type UKM_CREDIT_SGMNT,
      SEGMENT_LIMIT type KLIMK,
      CUSTOMER_LIMIT type UKM_CREDIT_LIMIT,
      BALANCE type SKFOR,
      CURRENCY type WAERS,
      LAST_DATE type DATS,
      LAST_VALUE type CASHA,
      LAST_CURR type CASHC,
    end of ZCA_CREDITSHOW_WA .
  types:
    ZCA_CREDITSHOW_TT              type standard table of ZCA_CREDITSHOW_WA              with non-unique default key .
  types:
    NETWR_AK type P length 8  decimals 000002 .
endinterface.
