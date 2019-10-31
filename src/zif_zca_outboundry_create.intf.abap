interface ZIF_ZCA_OUTBOUNDRY_CREATE
  public .


  types:
    VBELN_VL type C length 000010 .
  types:
    begin of BAPISHPDELIVNUMB,
      DELIV_NUMB type VBELN_VL,
    end of BAPISHPDELIVNUMB .
  types:
    BAPI_MSG type C length 000220 .
  types:
    VSTEL type C length 000004 .
  types:
    LFART type C length 000004 .
  types:
    VKORG type C length 000004 .
  types:
    VTWEG type C length 000002 .
  types:
    SPART type C length 000002 .
  types:
    KUNWE type C length 000010 .
  types:
    DATVW type C length 000001 .
  types:
    VBNUM type N length 000004 .
  types:
    begin of BAPIDLVCREATEHEADER,
      SHIP_POINT type VSTEL,
      DUE_DATE type DATS,
      DLV_TYPE type LFART,
      SALESORG type VKORG,
      DISTR_CHAN type VTWEG,
      DIVISION type SPART,
      SHIP_TO type KUNWE,
      DATE_USAGE type DATVW,
      NUM_DELIVERIES type VBNUM,
    end of BAPIDLVCREATEHEADER .
  types:
    POSNR type N length 000006 .
  types:
    RFBEL_VL type C length 000010 .
  types:
    BAPI_MTYPE type C length 000001 .
  types:
    SYMSGID type C length 000020 .
  types:
    SYMSGNO type N length 000003 .
  types:
    BALOGNR type C length 000020 .
  types:
    BALMNR type N length 000006 .
  types:
    SYMSGV type C length 000050 .
  types:
    BAPI_PARAM type C length 000032 .
  types:
    BAPI_FLD type C length 000030 .
  types:
    BAPILOGSYS type C length 000010 .
  types:
    begin of BAPIRET2,
      TYPE type BAPI_MTYPE,
      ID type SYMSGID,
      NUMBER type SYMSGNO,
      MESSAGE type BAPI_MSG,
      LOG_NO type BALOGNR,
      LOG_MSG_NO type BALMNR,
      MESSAGE_V1 type SYMSGV,
      MESSAGE_V2 type SYMSGV,
      MESSAGE_V3 type SYMSGV,
      MESSAGE_V4 type SYMSGV,
      PARAMETER type BAPI_PARAM,
      ROW type INT4,
      FIELD type BAPI_FLD,
      SYSTEM type BAPILOGSYS,
    end of BAPIRET2 .
  types:
    __BAPIRET2                     type standard table of BAPIRET2                       with non-unique default key .
  types:
    RFPOS_VL type N length 000006 .
  types:
    LFIMG type P length 7  decimals 000003 .
  types:
    VRKME type C length 000003 .
  types:
    ISOCD_VRKME type C length 000003 .
  types:
    POSNR_VL type N length 000006 .
  types:
    begin of BAPIDLVREFTOSALESORDER,
      REF_DOC type RFBEL_VL,
      REF_ITEM type RFPOS_VL,
      DLV_QTY type LFIMG,
      SALES_UNIT type VRKME,
      SALES_UNIT_ISO type ISOCD_VRKME,
      DELIV_NUMB type VBELN_VL,
      RETURNS_DELIV_NUMB type VBELN_VL,
      RETURNS_DELIV_ITEM type POSNR_VL,
    end of BAPIDLVREFTOSALESORDER .
  types:
    __BAPIDLVREFTOSALESORDER       type standard table of BAPIDLVREFTOSALESORDER         with non-unique default key .
endinterface.
