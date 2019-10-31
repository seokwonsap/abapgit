interface ZIF_BAPI_SALESORDER_GETDETAILB
  public .


  types:
    MSGFN type C length 000003 .
  types:
    VBELN_VA type C length 000010 .
  types ERZET type T .
  types:
    ERNAM type C length 000012 .
  types:
    VBTYP type C length 000001 .
  types:
    TRVOG type C length 000001 .
  types:
    AUART type C length 000004 .
  types:
    AUGRU type C length 000003 .
  types:
    SUBMI_SD type C length 000010 .
  types:
    LIFSK type C length 000002 .
  types:
    FAKSK type C length 000002 .
  types:
    BAPICUREXT type P length 15  decimals 000009 .
  types:
    WAERK type C length 000005 .
  types:
    WAERS_ISO type C length 000003 .
  types:
    VKORG type C length 000004 .
  types:
    VTWEG type C length 000002 .
  types:
    SPART type C length 000002 .
  types:
    VKGRP type C length 000003 .
  types:
    VKBUR type C length 000004 .
  types:
    GSBER type C length 000004 .
  types:
    GSKST type C length 000004 .
  types:
    KNUMV type C length 000010 .
  types:
    PRGRS_VBAK type C length 000001 .
  types:
    AUTLF type C length 000001 .
  types:
    VBKLA type C length 000009 .
  types:
    VBKLT type C length 000001 .
  types:
    KALSMASD type C length 000006 .
  types:
    VSBED type C length 000002 .
  types:
    FKARA type C length 000004 .
  types:
    AWAHR_AK type N length 000003 .
  types:
    KTEXT_V type C length 000040 .
  types:
    BSTNK type C length 000020 .
  types:
    BSARK type C length 000004 .
  types:
    BSTZD type C length 000004 .
  types:
    IHREZ type C length 000012 .
  types:
    BNAME_V type C length 000035 .
  types:
    TELF1_VP type C length 000016 .
  types:
    MAHZA type P length 2  decimals 000000 .
  types:
    KUNAG type C length 000010 .
  types:
    KOSTL type C length 000010 .
  types:
    STAFO type C length 000006 .
  types:
    STWAE type C length 000005 .
  types:
    KVGR1 type C length 000003 .
  types:
    KVGR2 type C length 000003 .
  types:
    KVGR3 type C length 000003 .
  types:
    KVGR4 type C length 000003 .
  types:
    KVGR5 type C length 000003 .
  types:
    KNUMA type C length 000010 .
  types:
    KOKRS type C length 000004 .
  types:
    PS_PSP_PNR type N length 000008 .
  types:
    KURST type C length 000004 .
  types:
    KKBER type C length 000004 .
  types:
    KNKLI type C length 000010 .
  types:
    GRUPP_CM type C length 000004 .
  types:
    SBGRP_CM type C length 000003 .
  types:
    CTLPC_CM type C length 000003 .
  types:
    WAERS_CM type C length 000005 .
  types:
    HITYP_PR type C length 000001 .
  types:
    ABRVW type C length 000003 .
  types:
    ABDIS type C length 000001 .
  types:
    VGBEL type C length 000010 .
  types:
    OBJKO type C length 000022 .
  types:
    BUKRS_VF type C length 000004 .
  types:
    TAXK1_AK type C length 000001 .
  types:
    TAXK2 type C length 000001 .
  types:
    TAXK3 type C length 000001 .
  types:
    TAXK4 type C length 000001 .
  types:
    TAXK5 type C length 000001 .
  types:
    TAXK6 type C length 000001 .
  types:
    TAXK7 type C length 000001 .
  types:
    TAXK8 type C length 000001 .
  types:
    TAXK9 type C length 000001 .
  types:
    XBLNR_V type C length 000016 .
  types:
    ORDNR_V type C length 000018 .
  types:
    VBTYP_V type C length 000001 .
  types:
    KALSMA_CH type C length 000006 .
  types:
    AGRZR type N length 000002 .
  types:
    AUFNR type C length 000012 .
  types:
    QMNUM type C length 000012 .
  types:
    VBELN_GRP type C length 000010 .
  types:
    SCHEME_GRP type C length 000004 .
  types:
    ABRUF_PART type C length 000001 .
  types ABHOZ type T .
  types:
    RPLNR type C length 000010 .
  types EZEIT_VBAK type T .
  types:
    LAND1TX type C length 000003 .
  types:
    INTCA type C length 000002 .
  types:
    LANDTX type C length 000003 .
  types:
    XEGDR type C length 000001 .
  types:
    ENQUEUE_GRP type C length 000001 .
  types:
    VSNMR_V type C length 000012 .
  types:
    XBLNR_V_LONG type C length 000035 .
  types:
    CHAR70 type C length 000070 .
  types:
    VBTYPL type C length 000004 .
  types:
    VBTYPL_V type C length 000004 .
  types:
    begin of BAPISDHD,
      OPERATION type MSGFN,
      DOC_NUMBER type VBELN_VA,
      REC_DATE type DATS,
      REC_TIME type ERZET,
      CREATED_BY type ERNAM,
      QT_VALID_F type DATS,
      QT_VALID_T type DATS,
      DOC_DATE type DATS,
      SD_DOC_CAT type VBTYP,
      TRAN_GROUP type TRVOG,
      DOC_TYPE type AUART,
      ORD_REASON type AUGRU,
      WAR_DATE type DATS,
      SD_COL_NUM type SUBMI_SD,
      DLV_BLOCK type LIFSK,
      BILL_BLOCK type FAKSK,
      NET_VAL_HD type BAPICUREXT,
      CURRENCY type WAERK,
      CURREN_ISO type WAERS_ISO,
      SALES_ORG type VKORG,
      DISTR_CHAN type VTWEG,
      DIVISION type SPART,
      SALES_GRP type VKGRP,
      SALES_OFF type VKBUR,
      BUS_AREA type GSBER,
      CT_AREA type GSKST,
      CT_VALID_F type DATS,
      CT_VALID_T type DATS,
      CONDITIONS type KNUMV,
      REQ_DATE_H type DATS,
      DATE_TYPE type PRGRS_VBAK,
      COMPL_DLV type AUTLF,
      DOC_CLASS type VBKLA,
      DOC_INDIC type VBKLT,
      SD_PRIC_PR type KALSMASD,
      SHIP_COND type VSBED,
      ORDBILLTYP type FKARA,
      ORD_PROBAB type AWAHR_AK,
      SEAR_PRPR type KTEXT_V,
      PURCH_NO type BSTNK,
      PO_METHOD type BSARK,
      PURCH_DATE type DATS,
      PO_SUPPLEM type BSTZD,
      REF_1 type IHREZ,
      ORDERER_NA type BNAME_V,
      TELEPHONE type TELF1_VP,
      DUN_COUNT type MAHZA,
      DUN_DATE type DATS,
      SOLD_TO type KUNAG,
      COSTCENTER type KOSTL,
      UPDATE_GRP type STAFO,
      STAT_CURR type STWAE,
      ISOSTATCUR type WAERS_ISO,
      CH_ON type DATS,
      CUST_GRP1 type KVGR1,
      CUST_GRP2 type KVGR2,
      CUST_GRP3 type KVGR3,
      CUST_GRP4 type KVGR4,
      CUST_GRP5 type KVGR5,
      AGREE_COND type KNUMA,
      CO_AREA type KOKRS,
      WBS_ELEM type PS_PSP_PNR,
      EXCHG_RATE type KURST,
      C_CTR_AREA type KKBER,
      CRED_ACCNT type KNKLI,
      CRED_GROUP type GRUPP_CM,
      REPR_GROUP type SBGRP_CM,
      RISK_CATEG type CTLPC_CM,
      CURR_CRED type WAERS_CM,
      ISOCURRCRE type WAERS_ISO,
      REL_DAT_DD type DATS,
      NEXT_CHDAT type DATS,
      NEXT_DATE type DATS,
      REL_CREDIT type BAPICUREXT,
      HI_TYPE_PR type HITYP_PR,
      DLVSCHEDUS type ABRVW,
      PLAN_DLV type ABDIS,
      REF_DOC type VGBEL,
      OB_JNR_HD type OBJKO,
      COMP_CODE type BUKRS_VF,
      ALT_TAX_CL type TAXK1_AK,
      TAX_CLASS2 type TAXK2,
      TAX_CLASS3 type TAXK3,
      TAX_CLASS4 type TAXK4,
      TAX_CLASS5 type TAXK5,
      TAX_CLASS6 type TAXK6,
      TAX_CLASS7 type TAXK7,
      TAX_CLASS8 type TAXK8,
      TAX_CLASS9 type TAXK9,
      REF_DOC_L type XBLNR_V,
      ASS_NUMBER type ORDNR_V,
      DOC_CAT_SD type VBTYP_V,
      KALSM_CH type KALSMA_CH,
      ACC_PERIOD type AGRZR,
      ORDERID type AUFNR,
      NOTIF_NO type QMNUM,
      MASTER_CON type VBELN_GRP,
      REF_PROC type SCHEME_GRP,
      CHECK_PART type ABRUF_PART,
      PICK_UP_DA type DATS,
      PICK_UP_T1 type ABHOZ,
      PICK_UP_T2 type ABHOZ,
      NUM_PAY_CA type RPLNR,
      LINE_TIME type EZEIT_VBAK,
      TAX_DEST_CT type LAND1TX,
      ISOTAXDEST type INTCA,
      TAX_DEPART type LANDTX,
      ISOTAXDEPA type INTCA,
      EU_TRIANG type XEGDR,
      MAST_CONTR type ENQUEUE_GRP,
      CML_QTY_DA type DATS,
      MS_DATE type DATS,
      VERSION type VSNMR_V,
      REF_DOC_L_LONG type XBLNR_V_LONG,
      CRM_GUID type CHAR70,
      SD_DOC_CAT_LONG type VBTYPL,
      DOC_CAT_SD_LONG type VBTYPL_V,
    end of BAPISDHD .
  types:
    CHAR1 type C length 000001 .
  types:
    begin of BAPIFLAG,
      BAPIFLAG type CHAR1,
    end of BAPIFLAG .
  types:
    begin of BAPIVBELN,
      VBELN type VBELN_VA,
    end of BAPIVBELN .
  types:
    TE_STRUC type C length 000030 .
  types:
    VALUEPART type C length 000240 .
  types:
    begin of BAPIPAREX,
      STRUCTURE type TE_STRUC,
      VALUEPART1 type VALUEPART,
      VALUEPART2 type VALUEPART,
      VALUEPART3 type VALUEPART,
      VALUEPART4 type VALUEPART,
    end of BAPIPAREX .
  types:
    __BAPIPAREX                    type standard table of BAPIPAREX                      with non-unique default key .
  types:
    ADRNR type C length 000010 .
  types:
    ANRED_VP type C length 000015 .
  types:
    NAME1_GP type C length 000035 .
  types:
    NAME2_GP type C length 000035 .
  types:
    NAME3_GP type C length 000035 .
  types:
    NAME4_GP type C length 000035 .
  types:
    STRAS_GP type C length 000035 .
  types:
    LAND1_GP type C length 000003 .
  types:
    ALAND_ISO type C length 000002 .
  types:
    PSTLZ type C length 000010 .
  types:
    PSTL2 type C length 000010 .
  types:
    PFORT_GP type C length 000035 .
  types:
    ORT01_GP type C length 000035 .
  types:
    ORT02_GP type C length 000035 .
  types:
    REGIO type C length 000003 .
  types:
    CITYC type C length 000004 .
  types:
    COUNC type C length 000003 .
  types:
    PFACH type C length 000010 .
  types:
    TELF1 type C length 000016 .
  types:
    TELF2 type C length 000016 .
  types:
    TELBX type C length 000015 .
  types:
    TELFX type C length 000031 .
  types:
    TELTX type C length 000030 .
  types:
    TELX1 type C length 000030 .
  types:
    SPRAS type C length 000001 .
  types:
    LAISO type C length 000002 .
  types:
    LZONE type C length 000010 .
  types:
    HSNMR type N length 000006 .
  types:
    PARGE type C length 000001 .
  types:
    NAME_LIST type C length 000035 .
  types:
    TXJCD type C length 000015 .
  types:
    AD_PERSNUM type C length 000010 .
  types:
    AD_ADRTYPE type C length 000001 .
  types:
    DUEFL_BAS type C length 000001 .
  types:
    UPDKZ_D type C length 000001 .
  types:
    STRAS_NA type C length 000035 .
  types:
    CHAR10 type C length 000010 .
  types:
    AD_SMTPADR type C length 000241 .
  types:
    begin of BAPISDCOAD,
      OPERATION type MSGFN,
      DOC_NUMBER type VBELN_VA,
      ADDRESS type ADRNR,
      FORMOFADDR type ANRED_VP,
      NAME type NAME1_GP,
      NAME_2 type NAME2_GP,
      NAME_3 type NAME3_GP,
      NAME_4 type NAME4_GP,
      STREET type STRAS_GP,
      COUNTRY type LAND1_GP,
      COUNTRYISO type ALAND_ISO,
      POSTL_CODE type PSTLZ,
      POBX_PCD type PSTL2,
      POBX_CTY type PFORT_GP,
      CITY type ORT01_GP,
      DISTRICT type ORT02_GP,
      REGION type REGIO,
      CITY_CODE type CITYC,
      COUNTY_CDE type COUNC,
      PO_BOX type PFACH,
      TELEPHONE type TELF1,
      TELEPHONE2 type TELF2,
      TELEBOX type TELBX,
      FAX_NUMBER type TELFX,
      TELETEX type TELTX,
      TELEX type TELX1,
      LANGU type SPRAS,
      LANGU_ISO type LAISO,
      TRANSPZONE type LZONE,
      HOUSE_NO type HSNMR,
      GENDER type PARGE,
      NAME_LIST type NAME_LIST,
      TAXJURCODE type TXJCD,
      PERS_NO type AD_PERSNUM,
      ADDR_TYPE type AD_ADRTYPE,
      NRELSTAT type DUEFL_BAS,
      INDIUPDATE type UPDKZ_D,
      STREETNA type STRAS_NA,
      HOUSE_NO_LONG type CHAR10,
      E_MAIL type AD_SMTPADR,
    end of BAPISDCOAD .
  types:
    __BAPISDCOAD                   type standard table of BAPISDCOAD                     with non-unique default key .
  types:
    VBELN type C length 000010 .
  types:
    POSNR type N length 000006 .
  types:
    FPLNR type C length 000010 .
  types:
    FPLTR type N length 000006 .
  types:
    FPTTP type C length 000002 .
  types:
    TETXT_FP type C length 000004 .
  types:
    FPFIX type C length 000001 .
  types:
    FAREG type C length 000001 .
  types:
    FPROZ type P length 3  decimals 000002 .
  types:
    WAERS_CP type C length 000005 .
  types:
    KURFP_P type P length 5  decimals 000005 .
  types:
    FAKSP_FP type C length 000002 .
  types:
    FKSAF type C length 000001 .
  types:
    PERIO_FP type C length 000002 .
  types:
    FPLAE type N length 000003 .
  types:
    MLST_ZAEHL type N length 000012 .
  types:
    MILESTONE type C length 000005 .
  types:
    DZTERM type C length 000004 .
  types:
    KUNRG type C length 000010 .
  types:
    TAXK1 type C length 000001 .
  types:
    VALTG type N length 000002 .
  types:
    TEMAN_1 type C length 000001 .
  types:
    FAKCA type C length 000002 .
  types:
    PRSOK type C length 000001 .
  types:
    TYPZM type C length 000001 .
  types CMPRE_FLT type F .
  types:
    UELNR type C length 000010 .
  types:
    UELTR type N length 000006 .
  types:
    KURRF_P type P length 5  decimals 000005 .
  types:
    CCACT type C length 000010 .
  types:
    KORTE type C length 000001 .
  types:
    KURFP_V type P length 5  decimals 000005 .
  types:
    KURRF_V type P length 5  decimals 000005 .
  types:
    begin of BAPISDBPLD,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      BILL_PLAN type FPLNR,
      BILL_PLANI type FPLTR,
      DATETYPE type FPTTP,
      DATEDESCRI type TETXT_FP,
      SETTLEDATE type DATS,
      IDADOPTBIL type FPFIX,
      RULEBILLPL type FAREG,
      INVOICEPER type FPROZ,
      CURRENCKEY type WAERS_CP,
      CURRENCISO type WAERS_ISO,
      EXCHANRATE type KURFP_P,
      VALONDATE type BAPICUREXT,
      BILLBLOCK type FAKSP_FP,
      ORDBILLTYP type FKARA,
      STATBILLPL type FKSAF,
      RULEORINEX type PERIO_FP,
      LENSTANPER type FPLAE,
      MILESTONNO type MLST_ZAEHL,
      MILESTONE type MILESTONE,
      PMNTTRMS type DZTERM,
      PAYER type KUNRG,
      TAX_CLASS1 type TAXK1,
      TAX_CLASS2 type TAXK2,
      TAX_CLASS3 type TAXK3,
      TAX_CLASS4 type TAXK4,
      TAX_CLASS5 type TAXK5,
      TAX_CLASS6 type TAXK6,
      TAX_CLASS7 type TAXK7,
      TAX_CLASS8 type TAXK8,
      TAX_CLASS9 type TAXK9,
      ADD_VAL_DY type VALTG,
      FIX_VAL_DY type DATS,
      SETTLEDAT type DATS,
      PROCASMANU type TEMAN_1,
      CALDEFDAYS type FAKCA,
      BILL_DATE type DATS,
      NET_VALUE type BAPICUREXT,
      NET_PRICE type BAPICUREXT,
      COST_DOC_C type BAPICUREXT,
      SUBTOT_PP1 type BAPICUREXT,
      SUBTOT_PP2 type BAPICUREXT,
      SUBTOT_PP3 type BAPICUREXT,
      SUBTOT_PP4 type BAPICUREXT,
      SUBTOT_PP5 type BAPICUREXT,
      SUBTOT_PP6 type BAPICUREXT,
      CREDPRICIT type BAPICUREXT,
      AMOUNTELIG type BAPICUREXT,
      REBATEBAS type BAPICUREXT,
      CURRENCY type WAERK,
      CURREN_ISO type WAERS_ISO,
      PRICE_OK type PRSOK,
      MEANSOFPAY type TYPZM,
      CREDITPRED type CMPRE_FLT,
      HILEVPAYNO type UELNR,
      HILEVITBIL type UELTR,
      EXCHRATEFI type KURRF_P,
      ACCOUNTNO type CCACT,
      INDICORDAT type KORTE,
      ORIGBILDAT type DATS,
      EXCHANRATE_V type KURFP_V,
      EXCHRATEFI_V type KURRF_V,
    end of BAPISDBPLD .
  types:
    __BAPISDBPLD                   type standard table of BAPISDBPLD                     with non-unique default key .
  types:
    FPTYP_FP type C length 000001 .
  types:
    FPART type C length 000002 .
  types:
    SORTL type C length 000010 .
  types:
    HORIZ_FP type C length 000002 .
  types:
    BEDAT_FPK type C length 000002 .
  types:
    ENDAT_FPK type C length 000002 .
  types:
    RFPLN_D type C length 000010 .
  types:
    AUTTE type C length 000001 .
  types:
    LODAR type C length 000002 .
  types:
    PERAF_FP type C length 000002 .
  types:
    TBDAR type C length 000002 .
  types:
    CO_AUFPL type N length 000010 .
  types:
    CO_APLZL type N length 000008 .
  types:
    RSNUM type N length 000010 .
  types:
    RSPOS type N length 000004 .
  types:
    EBELN type C length 000010 .
  types:
    FPLTU type N length 000006 .
  types:
    AUST1_CC type C length 000001 .
  types:
    AUST2_CC type C length 000001 .
  types:
    AUST3_CC type C length 000001 .
  types:
    AUST4_CC type C length 000001 .
  types:
    AUST5_CC type C length 000001 .
  types:
    PS_POSNR type N length 000008 .
  types:
    AUTKOR type C length 000001 .
  types:
    begin of BAPISDBPL,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      BILL_PLAN type FPLNR,
      BILLPLATYP type FPTYP_FP,
      B_INPLATYP type FPART,
      SORT_FLD type SORTL,
      BILLSTADAT type DATS,
      BILLENDDAT type DATS,
      RULEDETHOR type HORIZ_FP,
      RULEORISTA type BEDAT_FPK,
      RULEORIEND type ENDAT_FPK,
      RULEORINEX type PERIO_FP,
      LENSTANPER type FPLAE,
      STANBILLNO type RFPLN_D,
      DATESFROM type DATS,
      BILLCREAIA type AUTTE,
      RULEDATFRO type LODAR,
      RULEDETBIL type PERAF_FP,
      CALDEFDAYS type FAKCA,
      DATESTO type DATS,
      RULDATESTO type TBDAR,
      ROUTING_NO type CO_AUFPL,
      CO_APLZL type CO_APLZL,
      RESERV_NO type RSNUM,
      RES_ITEM type RSPOS,
      PO_NUMBER type EBELN,
      ITUNLIMIT type FPLTU,
      PAYCARDS1 type AUST1_CC,
      PAYCARDS2 type AUST2_CC,
      PAYCARDS3 type AUST3_CC,
      PAYCARDS4 type AUST4_CC,
      PAYCARDS5 type AUST5_CC,
      INTPROJNO type PS_POSNR,
      AUTOCREATE type AUTKOR,
    end of BAPISDBPL .
  types:
    __BAPISDBPL                    type standard table of BAPISDBPL                      with non-unique default key .
  types:
    KONDA type C length 000002 .
  types:
    KDGRP type C length 000002 .
  types:
    BZIRK type C length 000006 .
  types:
    PLTYP type C length 000002 .
  types:
    INCO1 type C length 000003 .
  types:
    INCO2 type C length 000028 .
  types:
    KZAZU_D type C length 000001 .
  types:
    PERFK type C length 000002 .
  types:
    PERRL type C length 000002 .
  types:
    MRNKZ type C length 000001 .
  types:
    SCHZW_BSEG type C length 000001 .
  types:
    KTGRD type C length 000002 .
  types:
    KURSK_P type P length 5  decimals 000005 .
  types:
    GJAHR type N length 000004 .
  types:
    POPER type N length 000003 .
  types:
    STCUR_P type P length 5  decimals 000005 .
  types:
    MSCHL type C length 000001 .
  types:
    MANSP type C length 000001 .
  types:
    WAKTION type C length 000010 .
  types:
    ABSSCHE_CM type C length 000006 .
  types:
    LCNUM type C length 000010 .
  types:
    J_1AFITP_D type C length 000002 .
  types:
    J_1ARFZVAT type C length 000001 .
  types:
    J_1AGICD_D type C length 000002 .
  types:
    J_1ADTYP_D type C length 000002 .
  types:
    J_1ATXREL_ type C length 000010 .
  types:
    ABTNR type C length 000004 .
  types:
    EMPST type C length 000025 .
  types:
    BSTKD type C length 000035 .
  types:
    BSTKD_E type C length 000035 .
  types:
    BSARK_E type C length 000004 .
  types:
    IHREZ_E type C length 000012 .
  types:
    POSEX_E type C length 000006 .
  types:
    KDKG1 type C length 000002 .
  types:
    KDKG2 type C length 000002 .
  types:
    KDKG3 type C length 000002 .
  types:
    KDKG4 type C length 000002 .
  types:
    KDKG5 type C length 000002 .
  types:
    WKWAE type C length 000005 .
  types:
    WKKUR_P type P length 5  decimals 000005 .
  types:
    AKWAE type C length 000005 .
  types:
    AKKUR_P type P length 5  decimals 000005 .
  types:
    AKPRZ type P length 3  decimals 000002 .
  types:
    J_1AINDXP type C length 000005 .
  types:
    BSTKD_M type C length 000035 .
  types:
    DELCO type C length 000003 .
  types:
    AD01PROFNR type C length 000008 .
  types:
    BEMOT type C length 000002 .
  types:
    FAKTF type C length 000002 .
  types:
    RR_RELTYP type C length 000001 .
  types:
    RR_ACDATV type C length 000001 .
  types:
    AKKUR_V type P length 5  decimals 000005 .
  types:
    KURSK_V type P length 5  decimals 000005 .
  types:
    STCUR_V type P length 5  decimals 000005 .
  types:
    WKKUR_V type P length 5  decimals 000005 .
  types:
    VSARTTR type C length 000002 .
  types:
    TRATY type C length 000004 .
  types:
    TRMTYP18 type C length 000018 .
  types:
    SDABW type C length 000004 .
  types:
    WMINR type C length 000010 .
  types:
    FKBER_SHORT type C length 000004 .
  types:
    PODKZ type C length 000001 .
  types:
    CGPL_GUID16_R3 type X length 000016 .
  types:
    CHAR012 type C length 000012 .
  types:
    FKBER_LONG type C length 000016 .
  types:
    GUID_16 type X length 000016 .
  types:
    MGV_TRANS_MAT_EXTERNAL type C length 000040 .
  types:
    MGV_TRANS_MAT_GUID type C length 000032 .
  types:
    MGV_TRANS_MAT_VERSION type C length 000010 .
  types:
    SEPA_MNDID type C length 000035 .
  types:
    INCOV type C length 000004 .
  types:
    INCO2_L type C length 000070 .
  types:
    INCO3_L type C length 000070 .
  types:
    TRMTYP40 type C length 000040 .
  types:
    begin of BAPISDBUSI,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      PRICE_GRP type KONDA,
      CUST_GROUP type KDGRP,
      SALES_DIST type BZIRK,
      PRICE_LIST type PLTYP,
      INCOTERMS1 type INCO1,
      INCOTERMS2 type INCO2,
      ORDCOMBIND type KZAZU_D,
      BILL_SCHED type PERFK,
      INVO_SCHED type PERRL,
      MN_INVOICE type MRNKZ,
      EXCHRATEFI type KURRF_P,
      ADD_VAL_DY type VALTG,
      FIX_VAL_DY type DATS,
      PMNTTRMS type DZTERM,
      PAYMETHODE type SCHZW_BSEG,
      ACCNT_ASGN type KTGRD,
      EXCHG_RATE type KURSK_P,
      PRICE_DATE type DATS,
      BILL_DATE type DATS,
      SERV_DATE type DATS,
      FISC_YEAR type GJAHR,
      POSTPERIOD type POPER,
      EXCHRATEST type STCUR_P,
      DUNN_KEY type MSCHL,
      DUNN_BLOCK type MANSP,
      BILL_PLAN type FPLNR,
      PROMOTION type WAKTION,
      PAY_GUARAN type ABSSCHE_CM,
      FINDOCPROC type LCNUM,
      J_1AFITP_D type J_1AFITP_D,
      REAS_0_VAT type J_1ARFZVAT,
      REGION type REGIO,
      ACTIVICODE type J_1AGICD_D,
      DISTRIBTYP type J_1ADTYP_D,
      TAX_CLASS type J_1ATXREL_,
      DEPART_NO type ABTNR,
      REC_POINT type EMPST,
      PURCH_NO_C type BSTKD,
      PURCH_DATE type DATS,
      PO_METHOD type BSARK,
      REF_1 type IHREZ,
      PURCH_NO_S type BSTKD_E,
      PO_DAT_S type DATS,
      PO_METH_S type BSARK_E,
      REF_1_S type IHREZ_E,
      POITMNOS type POSEX_E,
      TRANS_DATE type DATS,
      TRANSDATE type DATS,
      CUSTCONGR1 type KDKG1,
      CUSTCONGR2 type KDKG2,
      CUSTCONGR3 type KDKG3,
      CUSTCONGR4 type KDKG4,
      CUSTCONGR5 type KDKG5,
      VALCONTCUR type WKWAE,
      ISOVALCONT type WAERS_ISO,
      EXCHRATECO type WKKUR_P,
      CURRENCKEY type AKWAE,
      ISOCURRKEY type WAERS_ISO,
      EXCHRATELC type AKKUR_P,
      CEPRPERCEN type AKPRZ,
      INFLAT_IDX type J_1AINDXP,
      BASDATEIDX type DATS,
      CUST_PO_NO type BSTKD_M,
      DLV_TIME type DELCO,
      DLI_PROFIL type AD01PROFNR,
      CALC_MOTIVE type BEMOT,
      BILL_FORM type FAKTF,
      REVENUETYP type RR_RELTYP,
      BEGDEMAPER type RR_ACDATV,
      EXCHRATELC_V type AKKUR_V,
      EXCH_RATE_FI_V type KURRF_V,
      EXCHG_RATE_V type KURSK_V,
      EXCHRATEST_V type STCUR_V,
      EXCHRATECO_V type WKKUR_V,
      DELIV_TYPE type VSARTTR,
      TRANS_CAT type TRATY,
      TRANS_MAT type TRMTYP18,
      SPEC_PROC type SDABW,
      PRODCAT type WMINR,
      FUNC_AREA type FKBER_SHORT,
      POD_PROC type PODKZ,
      CAMPAIGN type CGPL_GUID16_R3,
      FKK_CONACCT type CHAR012,
      FUNC_AREA_LONG type FKBER_LONG,
      FKK_CONACCT_GUID type GUID_16,
      TRANS_MAT_EXTERNAL type MGV_TRANS_MAT_EXTERNAL,
      TRANS_MAT_GUID type MGV_TRANS_MAT_GUID,
      TRANS_MAT_VERSION type MGV_TRANS_MAT_VERSION,
      SEPA_MANDATE_ID type SEPA_MNDID,
      INCOTERMSV type INCOV,
      INCOTERMS2L type INCO2_L,
      INCOTERMS3L type INCO3_L,
      TRANS_MAT_LONG type TRMTYP40,
    end of BAPISDBUSI .
  types:
    __BAPISDBUSI                   type standard table of BAPISDBUSI                     with non-unique default key .
  types:
    CUXCFG_ID type C length 000006 .
  types:
    CUBLOB type C length 000250 .
  types:
    begin of BAPICUBLBM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONFIG_ID type CUXCFG_ID,
      CONTEXT type CUBLOB,
    end of BAPICUBLBM .
  types:
    __BAPICUBLBM                   type standard table of BAPICUBLBM                     with non-unique default key .
  types:
    CU_POSEX type C length 000006 .
  types:
    CU_INST_ID type C length 000008 .
  types:
    CUFLAG1 type C length 000001 .
  types:
    KBOBJNAME type C length 000030 .
  types:
    RTVERSION type C length 000030 .
  types:
    CU_CHECKED type C length 000001 .
  types:
    CUX_KBPROFILE type C length 000030 .
  types:
    CUX_KBLANGUAGE type C length 000001 .
  types:
    CUX_PERSIST_ID type C length 000032 .
  types:
    CUX_PERSIST_ID_TYPE type C length 000001 .
  types:
    begin of BAPICUCFGM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      POSEX type CU_POSEX,
      CONFIG_ID type CUXCFG_ID,
      ROOT_ID type CU_INST_ID,
      SCE type CUFLAG1,
      KBNAME type KBOBJNAME,
      KBVERSION type RTVERSION,
      COMPLETE type CU_CHECKED,
      CONSISTENT type CU_CHECKED,
      CFGINFO type CUBLOB,
      KBPROFILE type CUX_KBPROFILE,
      KBLANGUAGE type CUX_KBLANGUAGE,
      CBASE_ID type CUX_PERSIST_ID,
      CBASE_ID_TYPE type CUX_PERSIST_ID_TYPE,
    end of BAPICUCFGM .
  types:
    __BAPICUCFGM                   type standard table of BAPICUCFGM                     with non-unique default key .
  types:
    CU_OBJ_TY type C length 000010 .
  types:
    CU_CLASSTY type C length 000003 .
  types:
    CU_OBJ_KEY type C length 000050 .
  types:
    CU_OBJ_TXT type C length 000070 .
  types:
    CU_QUAN type C length 000015 .
  types:
    CU_INF type C length 000001 .
  types:
    CUX_QUAN_UNIT type C length 000003 .
  types:
    CUX_UUID_TYPE type C length 000032 .
  types:
    begin of BAPICUINSM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONFIG_ID type CUXCFG_ID,
      INST_ID type CU_INST_ID,
      OBJ_TYPE type CU_OBJ_TY,
      CLASS_TYPE type CU_CLASSTY,
      OBJ_KEY type CU_OBJ_KEY,
      OBJ_TXT type CU_OBJ_TXT,
      QUANTITY type CU_QUAN,
      AUTHOR type CU_INF,
      QUANTITY_UNIT type CUX_QUAN_UNIT,
      COMPLETE type CU_CHECKED,
      CONSISTENT type CU_CHECKED,
      OBJECT_GUID type CUX_UUID_TYPE,
      PERSIST_ID type CUX_PERSIST_ID,
      PERSIST_ID_TYPE type CUX_PERSIST_ID_TYPE,
    end of BAPICUINSM .
  types:
    __BAPICUINSM                   type standard table of BAPICUINSM                     with non-unique default key .
  types:
    CU_PRT_POS type C length 000004 .
  types:
    CUX_SALES_RELEVANT type C length 000001 .
  types:
    CUX_UUID_PRT type C length 000032 .
  types:
    begin of BAPICUPRTM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONFIG_ID type CUXCFG_ID,
      PARENT_ID type CU_INST_ID,
      INST_ID type CU_INST_ID,
      PART_OF_NO type CU_PRT_POS,
      OBJ_TYPE type CU_OBJ_TY,
      CLASS_TYPE type CU_CLASSTY,
      OBJ_KEY type CU_OBJ_KEY,
      AUTHOR type CU_INF,
      SALES_RELEVANT type CUX_SALES_RELEVANT,
      PART_OF_GUID type CUX_UUID_PRT,
    end of BAPICUPRTM .
  types:
    __BAPICUPRTM                   type standard table of BAPICUPRTM                     with non-unique default key .
  types:
    begin of BAPICUREFM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      POSEX type CU_POSEX,
      CONFIG_ID type CUXCFG_ID,
      INST_ID type CU_INST_ID,
    end of BAPICUREFM .
  types:
    __BAPICUREFM                   type standard table of BAPICUREFM                     with non-unique default key .
  types:
    CU_CHARC type C length 000040 .
  types:
    CU_CHARCT type C length 000070 .
  types:
    CUX_VALUE40 type C length 000040 .
  types:
    CU_VALUET type C length 000070 .
  types:
    CUX_VALCOD type C length 000001 .
  types:
    CUX_VALUE70 type C length 000070 .
  types:
    begin of BAPICUVALM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONFIG_ID type CUXCFG_ID,
      INST_ID type CU_INST_ID,
      CHARC type CU_CHARC,
      CHARC_TXT type CU_CHARCT,
      VALUE type CUX_VALUE40,
      VALUE_TXT type CU_VALUET,
      AUTHOR type CU_INF,
      VALUE_TO type CUX_VALUE40,
      VALCODE type CUX_VALCOD,
      VALUE_LONG type CUX_VALUE70,
      VALUE_TO_LONG type CUX_VALUE70,
    end of BAPICUVALM .
  types:
    __BAPICUVALM                   type standard table of BAPICUVALM                     with non-unique default key .
  types:
    CHAR26 type C length 000026 .
  types:
    CHAR15 type C length 000015 .
  types:
    begin of BAPICUVKM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONFIG_ID type CUXCFG_ID,
      INST_ID type CU_INST_ID,
      VKEY type CHAR26,
      FACTOR type CHAR15,
    end of BAPICUVKM .
  types:
    __BAPICUVKM                    type standard table of BAPICUVKM                      with non-unique default key .
  types:
    KNUMH type C length 000010 .
  types:
    KVEWE type C length 000001 .
  types:
    KOTABNR type C length 000003 .
  types:
    KAPPL type C length 000002 .
  types:
    KSCHA type C length 000004 .
  types:
    CHAR100 type C length 000100 .
  types:
    KOSRT type C length 000010 .
  types:
    KZUST type C length 000003 .
  types:
    KNUMA_PI type C length 000010 .
  types:
    KNUMA_AG type C length 000010 .
  types:
    KNUMA_SQ type C length 000010 .
  types:
    KNUMA_SD type C length 000010 .
  types:
    KNUMA_BO type C length 000010 .
  types:
    LICNO type C length 000020 .
  types:
    VAKEY_LONG type C length 000255 .
  types:
    VADAT_KO_LONG type C length 000255 .
  types:
    VAKEY_VERSION type N length 000002 .
  types:
    begin of BAPICONDHD,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      COND_NO type KNUMH,
      CREATED_BY type ERNAM,
      CREAT_DATE type DATS,
      COND_USAGE type KVEWE,
      TABLE_NO type KOTABNR,
      APPLICATIO type KAPPL,
      COND_TYPE type KSCHA,
      VARKEY type CHAR100,
      VALID_FROM type DATS,
      VALID_TO type DATS,
      SEARCHTERM type KOSRT,
      RESPONS type KZUST,
      PROMOT_NO type KNUMA_PI,
      SALES_DEAL type KNUMA_AG,
      SALESQUOTE type KNUMA_SQ,
      STD_AGRMNT type KNUMA_SD,
      PROMOTION type WAKTION,
      REBAGREEMT type KNUMA_BO,
      LIC_NO type LICNO,
      LIC_DATE type DATS,
      VARDATE type CHAR100,
      VARKEY_LONG type VAKEY_LONG,
      VARDATE_LONG type VADAT_KO_LONG,
      VARKEY_VERSION type VAKEY_VERSION,
    end of BAPICONDHD .
  types:
    __BAPICONDHD                   type standard table of BAPICONDHD                     with non-unique default key .
  types:
    KOPOS type N length 000002 .
  types:
    KNUMT type C length 000010 .
  types:
    STFKZ type C length 000001 .
  types:
    KZBZG type C length 000001 .
  types:
    KSTBM type P length 8  decimals 000003 .
  types:
    KONMS type C length 000003 .
  types:
    ISO_ZIEME type C length 000003 .
  types:
    KONWS type C length 000005 .
  types:
    BAPIISOCD type C length 000003 .
  types:
    KRECH type C length 000001 .
  types:
    KONWA type C length 000005 .
  types:
    KPEIN type P length 3  decimals 000000 .
  types:
    KMEIN type C length 000003 .
  types:
    PRSCH type C length 000004 .
  types:
    KUMZA type P length 3  decimals 000000 .
  types:
    KUMNE type P length 3  decimals 000000 .
  types:
    MEINS type C length 000003 .
  types:
    WAERS type C length 000005 .
  types:
    KWAEH type C length 000005 .
  types:
    KOEIN type C length 000005 .
  types:
    KZNEP type C length 000001 .
  types:
    KUNNR type C length 000010 .
  types:
    LIFNR type C length 000010 .
  types:
    MWSKZ type C length 000002 .
  types:
    LOEVM_KO type C length 000001 .
  types:
    DZAEHK_IND_SHORT type N length 000002 .
  types:
    BOMAT18 type C length 000018 .
  types:
    KSPAE type C length 000001 .
  types:
    BOSTA type C length 000001 .
  types:
    ANZAUF type N length 000002 .
  types:
    MIKBAS type P length 8  decimals 000003 .
  types:
    MXKBAS type P length 8  decimals 000003 .
  types:
    KLF_STG type N length 000004 .
  types:
    KLF_KAL type N length 000004 .
  types:
    VKKAL type C length 000001 .
  types:
    WT_WITHCD type C length 000002 .
  types:
    RANTYP type C length 000001 .
  types:
    RANL type C length 000013 .
  types:
    SBEWART type C length 000004 .
  types:
    MDFLG type C length 000001 .
  types:
    KFRST type C length 000001 .
  types:
    UASTA type C length 000001 .
  types:
    MGV_MATLSETTL_EXTERNAL type C length 000040 .
  types:
    MGV_MATLSETTL_GUID type C length 000032 .
  types:
    MGV_MATLSETTL_VERSION type C length 000010 .
  types:
    BOMAT40 type C length 000040 .
  types:
    DZAEHK_IND type N length 000003 .
  types:
    begin of BAPICONDIT,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      COND_NO type KNUMH,
      COND_COUNT type KOPOS,
      APPLICATIO type KAPPL,
      COND_TYPE type KSCHA,
      TEXT_NO type KNUMT,
      SCALETYPE type STFKZ,
      SCALEBASIN type KZBZG,
      SCALE_QTY type KSTBM,
      UNITMEASUR type KONMS,
      MEASUR_ISO type ISO_ZIEME,
      SCALE_VAL type BAPICUREXT,
      CURRENCKEY type KONWS,
      CURREN_ISO type BAPIISOCD,
      CALCTYPCON type KRECH,
      COND_VALUE type BAPICUREXT,
      CONDCURR type KONWA,
      COND_ISO type BAPIISOCD,
      COND_P_UNT type KPEIN,
      COND_UNIT type KMEIN,
      CONUNITISO type ISO_ZIEME,
      PRICELEVEL type PRSCH,
      NUMCONVERT type KUMZA,
      DENOMINATO type KUMNE,
      BASE_UOM type MEINS,
      BASEQTYISO type ISO_ZIEME,
      LOWERLIMIT type BAPICUREXT,
      UPPERLIMIT type BAPICUREXT,
      PLCONDVAL type BAPICUREXT,
      CUM_VALUE type BAPICUREXT,
      CUMM_ACCR type BAPICUREXT,
      CURRENCY type WAERS,
      CURR_ISO type BAPIISOCD,
      CONDCURREN type KWAEH,
      ISOCURRENC type BAPIISOCD,
      PLAN_BASIS type BAPICUREXT,
      RATE_UNIT type KOEIN,
      EXCLUSION type KZNEP,
      CUSTOMER type KUNNR,
      VENDOR_NO type LIFNR,
      TAX_CODE type MWSKZ,
      INDIDELETE type LOEVM_KO,
      CONDITIDX type DZAEHK_IND_SHORT,
      MATLSETTL type BOMAT18,
      ACCRUALS type BAPICUREXT,
      REB_RETROA type KSPAE,
      STATOFAGRE type BOSTA,
      PROMOT_NO type KNUMA_PI,
      SALES_DEAL type KNUMA_AG,
      SALESQUOTE type KNUMA_SQ,
      ADD_VAL_DY type VALTG,
      FIX_VAL_DY type DATS,
      PMNTTRMS type DZTERM,
      NUMBORDERS type ANZAUF,
      MINCONBAVA type MIKBAS,
      MAXCONBAVA type MXKBAS,
      MAXCONVAL type BAPICUREXT,
      INCR_SCALE type KLF_STG,
      PRICSCALE type KLF_KAL,
      RELPRCG type VKKAL,
      PROMOTION type WAKTION,
      REBAGREEMT type KNUMA_BO,
      WITHTAXCOD type WT_WITHCD,
      CONTRACT type RANTYP,
      CONTRACTNO type RANL,
      FLOW_TYPE type SBEWART,
      INDIMATMAI type MDFLG,
      STATUS type KFRST,
      UMSABST type UASTA,
      MATLSETTL_EXTERNAL type MGV_MATLSETTL_EXTERNAL,
      MATLSETTL_GUID type MGV_MATLSETTL_GUID,
      MATLSETTL_VERSION type MGV_MATLSETTL_VERSION,
      MATLSETTL_LONG type BOMAT40,
      CONDITIDX_LONG type DZAEHK_IND,
    end of BAPICONDIT .
  types:
    __BAPICONDIT                   type standard table of BAPICONDIT                     with non-unique default key .
  types:
    KPOSN type N length 000006 .
  types:
    STUNR type N length 000003 .
  types:
    DZAEHK_SHORT type N length 000002 .
  types:
    KKURS_P type P length 5  decimals 000005 .
  types:
    KVMEI type C length 000003 .
  types:
    KNTYP type C length 000001 .
  types:
    KSTAT type C length 000001 .
  types:
    KRUEK type C length 000001 .
  types:
    KRELI type C length 000001 .
  types:
    KHERK type C length 000001 .
  types:
    KGRPE type C length 000001 .
  types:
    KOUPD type C length 000001 .
  types:
    KOLNR_SHORT type N length 000002 .
  types:
    KVSL1 type C length 000003 .
  types:
    SAKNR type C length 000010 .
  types:
    KVSL2 type C length 000003 .
  types:
    KUNNR_KO type C length 000010 .
  types:
    KSTEU type C length 000001 .
  types:
    KINAK type C length 000001 .
  types:
    KOAID type C length 000001 .
  types:
    DZAEKO_SHORT type N length 000002 .
  types:
    KMXAW type C length 000001 .
  types:
    KMXWR type C length 000001 .
  types KFAKTOR type F .
  types:
    KDUPL type C length 000001 .
  types KFAKTOR1 type F .
  types:
    KOFRM_SHORT type N length 000003 .
  types:
    DRUKZ type C length 000001 .
  types:
    STUNB type N length 000003 .
  types:
    KZWIW type C length 000001 .
  types:
    KOFRA_SHORT type N length 000003 .
  types:
    KOFRS_SHORT type N length 000003 .
  types:
    KMANU type C length 000001 .
  types:
    TXPRF type C length 000001 .
  types:
    KNEGA type C length 000001 .
  types:
    GANZZ type C length 000001 .
  types:
    KOBLI type C length 000001 .
  types:
    KAEND_BTR type C length 000001 .
  types:
    KAEND_WRT type C length 000001 .
  types:
    KAEND_UFK type C length 000001 .
  types:
    KAEND_RCH type C length 000001 .
  types:
    KAEND_LOE type C length 000001 .
  types:
    KAEND_MEH type C length 000001 .
  types:
    KZTERM type C length 000001 .
  types:
    MSGNR type C length 000003 .
  types:
    SELKZ type C length 000001 .
  types:
    KFKIV type C length 000001 .
  types:
    KVARC type C length 000001 .
  types:
    KMPRS type C length 000001 .
  types:
    PRSQU1 type C length 000001 .
  types:
    VARCOND type C length 000026 .
  types:
    HISTU type P length 2  decimals 000000 .
  types:
    WEGXX type P length 3  decimals 000000 .
  types:
    BERGL type C length 000001 .
  types:
    VHIART type C length 000004 .
  types:
    RDIFA type C length 000001 .
  types:
    KMENG type C length 000001 .
  types:
    KBUFF type C length 000001 .
  types:
    KTREL type C length 000001 .
  types:
    TXJCD_LEVEL type C length 000001 .
  types:
    KKURS_V type P length 5  decimals 000005 .
  types:
    KOLNR type N length 000003 .
  types:
    DZAEHK type N length 000003 .
  types:
    DZAEKO type N length 000003 .
  types:
    KOFRM type N length 000007 .
  types:
    KOFRA type N length 000007 .
  types:
    KOFRS type N length 000007 .
  types:
    begin of BAPISDCOND,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CONDIT_NO type KNUMV,
      ITM_NUMBER type KPOSN,
      COND_ST_NO type STUNR,
      COND_COUNT type DZAEHK_SHORT,
      APPLICATIO type KAPPL,
      COND_TYPE type KSCHA,
      CONPRICDAT type DATS,
      CALCTYPCON type KRECH,
      CONBASEVAL type BAPICUREXT,
      SDCURRENCY type WAERK,
      CURREN_ISO type WAERS_ISO,
      COND_VALUE type BAPICUREXT,
      CURRENCY type WAERS,
      CURRENCISO type WAERS_ISO,
      CONEXCHRAT type KKURS_P,
      COND_P_UNT type KPEIN,
      COND_D_UNT type KVMEI,
      T_UNIT_ISO type ISO_ZIEME,
      NUMCONVERT type KUMZA,
      DENOMINATO type KUMNE,
      CONDTYPE type KNTYP,
      STAT_CON type KSTAT,
      SCALETYPE type STFKZ,
      ACCRUALS type KRUEK,
      CONINVOLST type KRELI,
      CONDORIGIN type KHERK,
      GROUPCOND type KGRPE,
      COND_UPDAT type KOUPD,
      ACCESS_SEQ type KOLNR_SHORT,
      COND_NO type KNUMH,
      CONDCOUNT type KOPOS,
      ACCOUNTKEY type KVSL1,
      GL_ACCOUNT type SAKNR,
      TAX_CODE type MWSKZ,
      ACCOUNT_KE type KVSL2,
      GLACCOUNT type SAKNR,
      WITHTAXCOD type WT_WITHCD,
      VENDOR_NO type LIFNR,
      CUSTNO_RR type KUNNR_KO,
      ROUNDOFFDI type BAPICUREXT,
      CONDVALUE type BAPICUREXT,
      CONDCNTRL type KSTEU,
      CONDISACTI type KINAK,
      CONDCLASS type KOAID,
      CONDCOINHD type DZAEKO_SHORT,
      INDIBASVAL type KMXAW,
      INDICONVAL type KMXWR,
      FACTBASVAL type KFAKTOR,
      STRUCTCOND type KDUPL,
      FACTCONBAS type KFAKTOR1,
      PRICELEVEL type PRSCH,
      CONDFORMUL type KOFRM_SHORT,
      SCALETYP type STFKZ,
      INCREMSCAL type BAPICUREXT,
      INCREASCAL type BAPICUREXT,
      INDEX_NO type INT4,
      INDEXNO type INT4,
      CONDITIDX type DZAEHK_IND_SHORT,
      PRINT_ID type DRUKZ,
      FROREFSTEP type STUNB,
      FROMREFSTE type STUNB,
      CONDSUBTOT type KZWIW,
      COND_FORM type KOFRA_SHORT,
      COND_FORM1 type KOFRS_SHORT,
      MAKMANENTR type KMANU,
      ROUNDRULE type TXPRF,
      PMSIGNAMOU type KNEGA,
      CURRCONVER type GANZZ,
      CONDISMAND type KOBLI,
      RATEOFCHA1 type KAEND_BTR,
      RATEOFCHA2 type KAEND_WRT,
      RATEOFCHA3 type KAEND_UFK,
      RATEOFCHA4 type KAEND_RCH,
      RATEOFCHA5 type KAEND_LOE,
      RATEOFCHA6 type KAEND_MEH,
      TERMSOFPAY type KZTERM,
      MESSAGENO type MSGNR,
      INDIUPDATE type UPDKZ_D,
      SELECTION type SELKZ,
      SCALEBASIN type KZBZG,
      SCALBASVAL type BAPICUREXT,
      UNITMEASUR type KONMS,
      TUNITISO type ISO_ZIEME,
      CURRENCKEY type KONWS,
      CORRENISO type WAERS_ISO,
      CONDCURREN type KWAEH,
      CORR_ISO type WAERS_ISO,
      CONBASVAL type BAPICUREXT,
      CONDIVALUE type BAPICUREXT,
      CONDINCOMP type KFKIV,
      CONDCONFIG type KVARC,
      CONDCHAMAN type KMPRS,
      PRICESOURC type PRSQU1,
      VARIANCOND type VARCOND,
      LEVEL_BOM type HISTU,
      PATH_BOM type WEGXX,
      STATOFAGRE type BOSTA,
      REB_RETROA type KSPAE,
      INDIDELETE type LOEVM_KO,
      AGREE_COND type KNUMA,
      CALCULBASE type BERGL,
      SH_MAT_TYP type VHIART,
      ROUNDDIFCO type RDIFA,
      QTYCONVERS type KMENG,
      CONCBUFFER type KBUFF,
      RELACCASSI type KTREL,
      INDIMATMAI type MDFLG,
      TAXJURISDI type TXJCD_LEVEL,
      CONEXCHRAT_V type KKURS_V,
      ACCESS_SEQ_LONG type KOLNR,
      COND_COUNT_LONG type DZAEHK,
      CONDCOINHD_LONG type DZAEKO,
      CONDITIDX_LONG type DZAEHK_IND,
      CONDFORMUL_LONG type KOFRM,
      COND_FORM_LONG type KOFRA,
      COND_FORM1_LONG type KOFRS,
    end of BAPISDCOND .
  types:
    __BAPISDCOND                   type standard table of BAPISDCOND                     with non-unique default key .
  types:
    KLFN1 type N length 000004 .
  types:
    begin of BAPICONDQS,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      COND_NO type KNUMH,
      COND_COUNT type KOPOS,
      LINE_NO type KLFN1,
      SCALE_QTY type KSTBM,
      COND_UNIT type KMEIN,
      T_UNIT_ISO type ISO_ZIEME,
      CURRENCY type BAPICUREXT,
      CONDCURR type KONWA,
      CURREN_ISO type BAPIISOCD,
    end of BAPICONDQS .
  types:
    __BAPICONDQS                   type standard table of BAPICONDQS                     with non-unique default key .
  types:
    begin of BAPICONDVS,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      COND_NO type KNUMH,
      COND_COUNT type KOPOS,
      LINE_NO type KLFN1,
      SCALE_VAL type BAPICUREXT,
      CURRENCKEY type KONWS,
      CURRENCISO type BAPIISOCD,
      CURRENCY type BAPICUREXT,
      CONDCURR type KONWA,
      CURREN_ISO type BAPIISOCD,
    end of BAPICONDVS .
  types:
    __BAPICONDVS                   type standard table of BAPICONDVS                     with non-unique default key .
  types:
    POSNR_VA type N length 000006 .
  types:
    VLAUF_VEDA type N length 000003 .
  types:
    VLAUE_VEDA type C length 000001 .
  types:
    VLAUK_VEDA type C length 000002 .
  types:
    VKUES_VEDA type C length 000004 .
  types:
    VASCH_VEDA type C length 000004 .
  types:
    VKPAR_VEDA type C length 000001 .
  types:
    VKGRU_VEDA type C length 000002 .
  types:
    VBELK_VEDA type C length 000020 .
  types:
    VBREG_VEDA type C length 000002 .
  types:
    VZEIT_VEDA type N length 000003 .
  types:
    VZEIE_VEDA type C length 000001 .
  types:
    WIMID type N length 000012 .
  types:
    VASDR type C length 000002 .
  types:
    RGVTE type C length 000002 .
  types:
    begin of BAPISDCNTR,
      OPERATION type MSGFN,
      DOC_NUMBER type VBELN_VA,
      ITM_NUMBER type POSNR_VA,
      VAL_PER type VLAUF_VEDA,
      VALPERUNIT type VLAUE_VEDA,
      VALPERCAT type VLAUK_VEDA,
      INST_DATE type DATS,
      ACCEPTDATE type DATS,
      CONTSTADAT type DATS,
      CONTSIGDAT type DATS,
      CANC_PROC type VKUES_VEDA,
      CONTENDACT type VASCH_VEDA,
      CONTCANDAT type DATS,
      REQCANCDAT type DATS,
      CANC_PARTY type VKPAR_VEDA,
      CANCREASON type VKGRU_VEDA,
      CONTENDDAT type DATS,
      CANC_DOC type VBELK_VEDA,
      CANCDOCDAT type DATS,
      CONTSTARUL type VBREG_VEDA,
      LEADTIMACT type VZEIT_VEDA,
      LEADTIMUNI type VZEIE_VEDA,
      DISM_DATE type DATS,
      ACTIONDATE type DATS,
      WI_ID type WIMID,
      ACTDATRULE type VASDR,
      CONTENDRUL type RGVTE,
    end of BAPISDCNTR .
  types:
    __BAPISDCNTR                   type standard table of BAPISDCNTR                     with non-unique default key .
  types:
    CCINS type C length 000004 .
  types:
    CCNUM type C length 000025 .
  types:
    CCNAME type C length 000040 .
  types:
    CSOUR type C length 000001 .
  types:
    SETTL type C length 000001 .
  types:
    AUNUM type C length 000010 .
  types:
    AUTRA type C length 000015 .
  types AUTIM type T .
  types:
    MERCH type C length 000015 .
  types:
    LOCID_CC type C length 000010 .
  types:
    TRMID type C length 000010 .
  types:
    CCBTC type C length 000010 .
  types:
    CCTYP type C length 000002 .
  types:
    CCAUA type C length 000001 .
  types:
    CCALL type C length 000001 .
  types:
    REACT_SD type C length 000001 .
  types:
    CCOLD type C length 000001 .
  types:
    CCVAL type C length 000001 .
  types:
    CCPRE type C length 000001 .
  types:
    UELTR_A type N length 000006 .
  types:
    RCAVR_CC type C length 000004 .
  types:
    RCAVA_CC type C length 000004 .
  types:
    RCAVZ_CC type C length 000004 .
  types:
    RCRSP_CC type C length 000004 .
  types:
    RTEXT_CC type C length 000040 .
  types:
    AUTHU type C length 000001 .
  types:
    CCBEG type C length 000001 .
  types:
    begin of BAPICCARDM,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      CC_TYPE type CCINS,
      CC_NUMBER type CCNUM,
      CC_VALID_F type DATS,
      CC_VALID_T type DATS,
      CC_NAME type CCNAME,
      DATAORIGIN type CSOUR,
      AUTHAMOUNT type BAPICUREXT,
      CURRENCY type WAERS,
      CURR_ISO type WAERS_ISO,
      CC_SETTLED type SETTL,
      AUTH_CC_NO type AUNUM,
      AUTH_REFNO type AUTRA,
      AUTH_DATE type DATS,
      AUTH_TIME type AUTIM,
      MERCHIDCL type MERCH,
      PNTOFRECEI type LOCID_CC,
      TERMINAL type TRMID,
      SETTLEMRUN type CCBTC,
      CARDCATEGO type CCTYP,
      AUTHORTYPE type CCAUA,
      STATEXTSYS type CCALL,
      CC_REACT type REACT_SD,
      AMOUNTAUTH type BAPICUREXT,
      CURR_CRED type WAERS_CM,
      CURCREDISO type WAERS_ISO,
      AUTH_EXPIR type CCOLD,
      AMOUNTCHAN type CCVAL,
      PRE_AUTH type CCPRE,
      HIGHLEAUTH type UELTR_A,
      RADRCHECK1 type RCAVR_CC,
      RADRCHECK2 type RCAVA_CC,
      RADRCHECK3 type RCAVZ_CC,
      RCARDCHECK type RCRSP_CC,
      REASONTEXT type RTEXT_CC,
      CC_LIMIT type BAPICUREXT,
      AUTH_USED type AUTHU,
      CC_LIMITED type CCBEG,
    end of BAPICCARDM .
  types:
    __BAPICCARDM                   type standard table of BAPICCARDM                     with non-unique default key .
  types:
    VBELN_VON type C length 000010 .
  types:
    POSNR_VON type N length 000006 .
  types:
    VBELN_NACH type C length 000010 .
  types:
    POSNR_NACH type N length 000006 .
  types:
    VBTYP_N type C length 000001 .
  types:
    RFMNG type P length 8  decimals 000003 .
  types:
    WAERS_V type C length 000005 .
  types:
    PLMIN type C length 000001 .
  types:
    TAQUI type C length 000001 .
  types:
    MATNR18 type C length 000018 .
  types:
    BWART type C length 000003 .
  types:
    BDART type C length 000002 .
  types:
    PLART type C length 000001 .
  types:
    STUFE_VBFA type N length 000002 .
  types:
    LGNUM type C length 000003 .
  types:
    FKTYP type C length 000001 .
  types:
    BRGEW_15 type P length 8  decimals 000003 .
  types:
    GEWEI type C length 000003 .
  types:
    GEWEI_ISO type C length 000003 .
  types:
    VOLUM_15 type P length 8  decimals 000003 .
  types:
    VOLEH type C length 000003 .
  types:
    VOLEH_ISO type C length 000003 .
  types RFMNG_FLTV type F .
  types RFMNG_FLT type F .
  types:
    VRKME type C length 000003 .
  types:
    ISOCD_UNIT type C length 000003 .
  types ABGES_CM type F .
  types:
    SOBKZ type C length 000001 .
  types:
    LVS_SONUM type C length 000016 .
  types:
    LVS_KZBEF type C length 000001 .
  types:
    NTGEW type P length 7  decimals 000003 .
  types:
    MGV_MATERIAL_EXTERNAL type C length 000040 .
  types:
    MGV_MATERIAL_GUID type C length 000032 .
  types:
    MGV_MATERIAL_VERSION type C length 000010 .
  types:
    MATNR40 type C length 000040 .
  types:
    VBTYPL_N type C length 000004 .
  types:
    begin of BAPISDFLOW,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      PRECSDDOC type VBELN_VON,
      PREDITDOC type POSNR_VON,
      SUBSSDDOC type VBELN_NACH,
      SUBSITDOC type POSNR_NACH,
      DOCCATEGOR type VBTYP_N,
      REF_QTY type RFMNG,
      BASE_UOM type MEINS,
      T_UNIT_ISO type ISO_ZIEME,
      REFERENVAL type BAPICUREXT,
      STATISCURR type WAERS_V,
      CURRENCISO type WAERS_ISO,
      DOC_CAT_SD type VBTYP_V,
      QTYPOSCALC type PLMIN,
      ID_MM_WM type TAQUI,
      CREAT_DATE type DATS,
      REC_TIME type ERZET,
      MATERIAL type MATNR18,
      MOVE_TYP type BWART,
      REQ_TYPE type BDART,
      PLTYPE type PLART,
      LEVELFLOWR type STUFE_VBFA,
      WHSE_NO type LGNUM,
      CH_ON type DATS,
      BILLINGTYP type FKTYP,
      GROSS_WT type BRGEW_15,
      UNIT_OF_WT type GEWEI,
      UNITWTISO type GEWEI_ISO,
      VOLUME type VOLUM_15,
      VOLUMEUNIT type VOLEH,
      VOLUNITISO type VOLEH_ISO,
      BILL_PLAN type FPLNR,
      BILL_PLANI type FPLTR,
      REFQTYUNIT type RFMNG_FLTV,
      REFQTYFLOA type RFMNG_FLT,
      SALES_UNIT type VRKME,
      ISOCODUNIT type ISOCD_UNIT,
      GURANTEED type ABGES_CM,
      SPEC_STOCK type SOBKZ,
      SP_STCK_NO type LVS_SONUM,
      INDINVMANG type LVS_KZBEF,
      NET_WEIGHT type NTGEW,
      MATERIAL_EXTERNAL type MGV_MATERIAL_EXTERNAL,
      MATERIAL_GUID type MGV_MATERIAL_GUID,
      MATERIAL_VERSION type MGV_MATERIAL_VERSION,
      MATERIAL_LONG type MATNR40,
      DOCCATEGOR_LONG type VBTYPL_N,
      DOC_CAT_SD_LONG type VBTYPL_V,
    end of BAPISDFLOW .
  types:
    __BAPISDFLOW                   type standard table of BAPISDFLOW                     with non-unique default key .
  types:
    MATWA18 type C length 000018 .
  types:
    PMATN18 type C length 000018 .
  types:
    CHARG_D type C length 000010 .
  types:
    MATKL type C length 000009 .
  types:
    ARKTX type C length 000040 .
  types:
    PSTYV type C length 000004 .
  types:
    POSAR type C length 000001 .
  types:
    LFREL_AP type C length 000001 .
  types:
    FKREL type C length 000001 .
  types:
    UEPOS type N length 000006 .
  types:
    GRPOS type N length 000006 .
  types:
    ABGRU_VA type C length 000002 .
  types:
    PRODH_D type C length 000018 .
  types:
    DZMENG type P length 7  decimals 000003 .
  types:
    DZIEME type C length 000003 .
  types:
    UMZIZ type P length 3  decimals 000000 .
  types:
    UMZIN type P length 3  decimals 000000 .
  types:
    SMENG type P length 7  decimals 000003 .
  types:
    ABLFZ type P length 7  decimals 000003 .
  types:
    ABSFZ type P length 7  decimals 000003 .
  types:
    POSEX type C length 000006 .
  types:
    KDMAT22 type C length 000022 .
  types:
    KBVER type P length 2  decimals 000000 .
  types:
    KEVER type P length 2  decimals 000000 .
  types:
    VKGRU type C length 000003 .
  types:
    GRKOR type N length 000003 .
  types:
    FMENG type C length 000001 .
  types:
    UEBTK_V type C length 000001 .
  types:
    UEBTO type P length 2  decimals 000001 .
  types:
    UNTTO type P length 2  decimals 000001 .
  types:
    FAKSP_AP type C length 000002 .
  types:
    ATPKZ type C length 000001 .
  types:
    RKFKF type C length 000001 .
  types:
    ANTLF type P length 1  decimals 000000 .
  types:
    KZTLF type C length 000001 .
  types:
    CHSPL type C length 000001 .
  types:
    KWMENG type P length 8  decimals 000003 .
  types:
    LSMENG type P length 8  decimals 000003 .
  types:
    KBMENG type P length 8  decimals 000003 .
  types:
    KLMENG type P length 8  decimals 000003 .
  types:
    UMVKZ type P length 3  decimals 000000 .
  types:
    UMVKN type P length 3  decimals 000000 .
  types:
    BRGEW_AP type P length 8  decimals 000003 .
  types:
    NTGEW_AP type P length 8  decimals 000003 .
  types:
    VOLUM_AP type P length 8  decimals 000003 .
  types:
    VBELV type C length 000010 .
  types:
    POSNV type N length 000006 .
  types:
    VGPOS type N length 000006 .
  types:
    VOREF type C length 000001 .
  types:
    UPFLV type C length 000001 .
  types:
    ERLRE type C length 000001 .
  types:
    LPRIO type N length 000002 .
  types:
    WERKS_D type C length 000004 .
  types:
    LGORT_D type C length 000004 .
  types:
    VSTEL type C length 000004 .
  types:
    ROUTE type C length 000006 .
  types:
    STKEY type C length 000001 .
  types:
    STNUM type C length 000008 .
  types:
    STPOS_VBAP type P length 3  decimals 000000 .
  types:
    AWAHR type N length 000003 .
  types:
    TAXMT type C length 000001 .
  types:
    VBEAF type P length 3  decimals 000002 .
  types:
    VBEAV type P length 3  decimals 000002 .
  types:
    VGREF type C length 000001 .
  types:
    SHKZG_VA type C length 000001 .
  types:
    SKTOF type C length 000001 .
  types:
    MTVFP type C length 000002 .
  types:
    SUMBD type C length 000001 .
  types:
    KONDM type C length 000002 .
  types:
    KTGRM type C length 000002 .
  types:
    BONUS type C length 000002 .
  types:
    PROVG type C length 000002 .
  types:
    EANNR type C length 000013 .
  types:
    BWTAR_D type C length 000010 .
  types:
    BWTEX type C length 000001 .
  types:
    XCHPF type C length 000001 .
  types:
    XCHAR type C length 000001 .
  types:
    MINLF type P length 7  decimals 000003 .
  types:
    EAN11 type C length 000018 .
  types:
    FIXMG type C length 000001 .
  types:
    PRCTR type C length 000010 .
  types:
    MVGR1 type C length 000003 .
  types:
    MVGR2 type C length 000003 .
  types:
    MVGR3 type C length 000003 .
  types:
    MVGR4 type C length 000003 .
  types:
    MVGR5 type C length 000003 .
  types:
    KMPMG type P length 7  decimals 000003 .
  types:
    SUGRD type C length 000004 .
  types:
    VPZUO type C length 000001 .
  types:
    RKEOBJNR type N length 000010 .
  types:
    VPMAT18 type C length 000018 .
  types:
    VPWRK type C length 000004 .
  types:
    PRBME type C length 000003 .
  types UMREFF type F .
  types:
    KNTTP type C length 000001 .
  types:
    KZVBR type C length 000001 .
  types:
    SERNR type C length 000008 .
  types:
    OBJPO type C length 000022 .
  types:
    ABGR_SCHL type C length 000006 .
  types:
    BEDAE type C length 000004 .
  types:
    CMTFG type C length 000001 .
  types:
    CMPNT type C length 000001 .
  types:
    CMKUA_P type P length 5  decimals 000005 .
  types:
    CUOBJ_VA type N length 000018 .
  types:
    CUOBJ_CH type N length 000018 .
  types:
    CEPOK type C length 000001 .
  types:
    SERAIL type C length 000004 .
  types:
    NACHL type C length 000001 .
  types:
    MAGRV type C length 000004 .
  types:
    MPROK type C length 000001 .
  types:
    PROSA type C length 000001 .
  types:
    UEPVW type C length 000001 .
  types:
    CK_KALNR type N length 000012 .
  types:
    CK_KLVAR type C length 000004 .
  types:
    SPOSN type C length 000004 .
  types:
    KOWRR type C length 000001 .
  types:
    EXART type C length 000002 .
  types:
    PREFE type C length 000001 .
  types:
    KNUMH_CH type C length 000010 .
  types:
    CLINT type N length 000010 .
  types:
    CHMVS type N length 000003 .
  types:
    STLTY type C length 000001 .
  types:
    STLKN type N length 000008 .
  types:
    CIM_COUNT type N length 000008 .
  types:
    CUINK type C length 000001 .
  types:
    AUFZSCHL type C length 000006 .
  types:
    AUFKALSM type C length 000006 .
  types:
    KOSCH type C length 000018 .
  types:
    UPMAT18 type C length 000018 .
  types:
    UKONM type C length 000002 .
  types:
    MFRGR type C length 000008 .
  types:
    PLAVO type C length 000004 .
  types:
    KANNR type C length 000035 .
  types:
    ABSFORM_CM type C length 000002 .
  types:
    J_1BCFOP type C length 000010 .
  types:
    J_1BTAXLW1 type C length 000003 .
  types:
    J_1BTAXLW2 type C length 000003 .
  types:
    J_1BTXSDC_ type C length 000002 .
  types:
    WKTNR type C length 000010 .
  types:
    WKTPS type N length 000006 .
  types:
    W_SORTK type C length 000018 .
  types:
    KZBWS type C length 000001 .
  types:
    WGRU_HIE1 type C length 000018 .
  types:
    WGRU_HIE2 type C length 000018 .
  types:
    KZFME type C length 000001 .
  types:
    LSTANR type C length 000001 .
  types:
    TECHS type C length 000012 .
  types:
    BERID type C length 000010 .
  types:
    KDMAT type C length 000035 .
  types:
    CMKUA_V type P length 5  decimals 000005 .
  types:
    PACKNO type N length 000010 .
  types:
    MGV_MAT_ENTRD_EXTERNAL type C length 000040 .
  types:
    MGV_MAT_ENTRD_GUID type C length 000032 .
  types:
    MGV_MAT_ENTRD_VERSION type C length 000010 .
  types:
    MGV_PLNG_MATL_EXTERNAL type C length 000040 .
  types:
    MGV_PLNG_MATL_GUID type C length 000032 .
  types:
    MGV_PLNG_MATL_VERSION type C length 000010 .
  types:
    MGV_PRICE_REF_EXTERNAL type C length 000040 .
  types:
    MGV_PRICE_REF_GUID type C length 000032 .
  types:
    MGV_PRICE_REF_VERSION type C length 000010 .
  types:
    MGV_PR_REF_MAT_EXTERNAL type C length 000040 .
  types:
    MGV_PR_REF_MAT_GUID type C length 000032 .
  types:
    MGV_PR_REF_MAT_VERSION type C length 000010 .
  types:
    MATWA40 type C length 000040 .
  types:
    PMATN40 type C length 000040 .
  types:
    VPMAT40 type C length 000040 .
  types:
    UPMAT40 type C length 000040 .
  types:
    begin of BAPISDITBOS,
      OPERATION type MSGFN,
      DOC_NUMBER type VBELN_VA,
      ITM_NUMBER type POSNR_VA,
      MATERIAL type MATNR18,
      MAT_ENTRD type MATWA18,
      PR_REF_MAT type PMATN18,
      BATCH type CHARG_D,
      MATL_GROUP type MATKL,
      SHORT_TEXT type ARKTX,
      ITEM_CATEG type PSTYV,
      ITEM_TYPE type POSAR,
      REL_FOR_DE type LFREL_AP,
      REL_FOR_BI type FKREL,
      HG_LV_ITEM type UEPOS,
      ALTERN_ITM type GRPOS,
      REA_FOR_RE type ABGRU_VA,
      PROD_HIER type PRODH_D,
      OUT_AGR_TA type BAPICUREXT,
      TARGET_QTY type DZMENG,
      TARGET_QU type DZIEME,
      T_UNIT_ISO type ISO_ZIEME,
      TARG_QTY_N type UMZIZ,
      TARG_QTY_D type UMZIN,
      BASE_UOM type MEINS,
      T_BAS_UNIT type ISO_ZIEME,
      SCALE_QUAN type SMENG,
      ROUND_DLV type ABLFZ,
      RECON_DATE type DATS,
      MAX_DEVIAT type ABSFZ,
      PO_ITM_NO type POSEX,
      CUST_MAT22 type KDMAT22,
      MAX_DEV_PE type KBVER,
      MAX_DEV_DA type KEVER,
      REPAIR_PRO type VKGRU,
      DLVSCHEDUS type ABRVW,
      DLV_GROUP type GRKOR,
      FIXED_QUAN type FMENG,
      DELI_UNLIM type UEBTK_V,
      OVER_DLV_T type UEBTO,
      UNDER_DLV type UNTTO,
      BILL_BLOCK type FAKSP_AP,
      REPLACE_PT type ATPKZ,
      METH_BILL type RKFKF,
      DIVISION type SPART,
      BUS_AREA type GSBER,
      NET_VALUE type BAPICUREXT,
      CURRENCY type WAERK,
      CURREN_ISO type WAERS_ISO,
      MAX_PL_DLV type ANTLF,
      PART_DLV type KZTLF,
      BTCH_SPLIT type CHSPL,
      REQ_QTY type KWMENG,
      CUM_REQ_DE type LSMENG,
      CUM_CF_QTY type KBMENG,
      CUM_CON_QU type KLMENG,
      SALES_UNIT type VRKME,
      ISOCODUNIT type ISOCD_UNIT,
      SALES_QTY1 type UMVKZ,
      SALES_QTY2 type UMVKN,
      GROSS_WEIG type BRGEW_AP,
      NET_WEIGHT type NTGEW_AP,
      UNIT_OF_WT type GEWEI,
      UNIT_WTISO type GEWEI_ISO,
      VOLUME type VOLUM_AP,
      VOLUMEUNIT type VOLEH,
      VOLUNITISO type VOLEH_ISO,
      CAU_VBELN type VBELV,
      CAU_POSNR type POSNV,
      REF_DOC type VGBEL,
      POSNR_VOR type VGPOS,
      OBJ_COPY type VOREF,
      UPDAT_FLAG type UPFLV,
      END_RULE type ERLRE,
      DLV_PRIO type LPRIO,
      PLANT type WERKS_D,
      STGE_LOC type LGORT_D,
      SHIP_POINT type VSTEL,
      ROUTE type ROUTE,
      KEY_ST type STKEY,
      DATE_ST type DATS,
      NBR_ST type STNUM,
      STPOS_VBAP type STPOS_VBAP,
      ORDER_PROB type AWAHR,
      CREAT_DATE type DATS,
      CREATED_BY type ERNAM,
      REC_TIME type ERZET,
      TAX_CLASS1 type TAXMT,
      TAX_CLASS2 type TAXMT,
      TAX_CLASS3 type TAXMT,
      TAX_CLASS4 type TAXMT,
      TAX_CLASS5 type TAXMT,
      TAX_CLASS6 type TAXMT,
      TAX_CLASS7 type TAXMT,
      TAX_CLASS8 type TAXMT,
      TAX_CLASS9 type TAXMT,
      FIX_SP_DAY type VBEAF,
      VAR_SP_DAY type VBEAV,
      PREC_DOC type VGREF,
      NET_PRICE type BAPICUREXT,
      COND_P_UNT type KPEIN,
      COND_UNIT type KMEIN,
      CONISOUNIT type ISO_ZIEME,
      RETOURE type SHKZG_VA,
      CASH_DISC type SKTOF,
      AVAILCHECK type MTVFP,
      SUM_REQUIR type SUMBD,
      MAT_PR_GRP type KONDM,
      ACCT_ASSGT type KTGRM,
      REBATE_GRP type BONUS,
      COMM_GROUP type PROVG,
      EUR_ART_NR type EANNR,
      PRICE_OK type PRSOK,
      VAL_TYPE type BWTAR_D,
      SEP_VALUAT type BWTEX,
      BATCH_MGMT type XCHPF,
      IND_BTCH type XCHAR,
      MIN_DELY type MINLF,
      UPDATE_GRP type STAFO,
      COST_DOC_C type BAPICUREXT,
      SUBTOT_PP1 type BAPICUREXT,
      SUBTOT_PP2 type BAPICUREXT,
      SUBTOT_PP3 type BAPICUREXT,
      SUBTOT_PP4 type BAPICUREXT,
      SUBTOT_PP5 type BAPICUREXT,
      SUBTOT_PP6 type BAPICUREXT,
      EXCH_RATE type STCUR_P,
      CH_ON type DATS,
      EAN_UPC type EAN11,
      FIX_DATE type FIXMG,
      PROFIT_CTR type PRCTR,
      PRC_GROUP1 type MVGR1,
      PRC_GROUP2 type MVGR2,
      PRC_GROUP3 type MVGR3,
      PRC_GROUP4 type MVGR4,
      PRC_GROUP5 type MVGR5,
      COMPON_QTY type KMPMG,
      SUBSTREASO type SUGRD,
      SPEC_STOCK type SOBKZ,
      ALLOC_INDI type VPZUO,
      PROFIT_SEG type RKEOBJNR,
      WBS_ELEM type PS_PSP_PNR,
      ORDERID type AUFNR,
      PLNG_MATL type VPMAT18,
      PLNG_PLANT type VPWRK,
      BASE_UNIT type PRBME,
      ISOBASUNIT type ISO_ZIEME,
      CONV_FACT type UMREFF,
      ACCTASSCAT type KNTTP,
      CONSUMPT type KZVBR,
      BOMEXPLNO type SERNR,
      OBJ_NR_IT type OBJPO,
      RES_ANAL type ABGR_SCHL,
      REQMTSTYP type BEDAE,
      CREDPRICIT type BAPICUREXT,
      PARTRELID type CMTFG,
      ACTCREDID type CMPNT,
      CR_EXCHRAT type CMKUA_P,
      CONFIG type CUOBJ_VA,
      CHCLASS_IN type CUOBJ_CH,
      STAT_PRICE type CEPOK,
      COND_UPDAT type KOUPD,
      SERNO_PROF type SERAIL,
      NO_OF_SERI type INT4,
      NOGRPOSTED type NACHL,
      MAT_GRP_SM type MAGRV,
      MAN_PR_CH type MPROK,
      DOC_CAT_SD type VBTYP_V,
      MATDETERID type PROSA,
      ITUSAGEID type UEPVW,
      COSTESTNR type CK_KALNR,
      CSTG_VRNT type CK_KLVAR,
      BOMITEMNR type SPOSN,
      STAT_VAL type KOWRR,
      STAT_DATE type DATS,
      BUS_TRANST type EXART,
      PREF_INDIC type PREFE,
      NRCONDREC type KNUMH_CH,
      INTCLASSNR type CLINT,
      BATCH_EXIT type CHMVS,
      BOM_CATEGO type STLTY,
      BOM_IT_NR type STLKN,
      COUNTER type CIM_COUNT,
      INCONSCONF type CUINK,
      OVERH_KEY type AUFZSCHL,
      CSTG_SHEET type AUFKALSM,
      CSTG_VRNT1 type CK_KLVAR,
      PROD_ALLOC type KOSCH,
      PRICE_REF type UPMAT18,
      MATPRICGRP type UKONM,
      MATFRGTGRP type MFRGR,
      PLANDLVSCH type PLAVO,
      SEQUENCENO type KANNR,
      CREDPRIC type CMPRE_FLT,
      PAY_GUARAN type ABSFORM_CM,
      GURANTEED type ABGES_CM,
      CFOP_CODE type J_1BCFOP,
      TAXLAWICMS type J_1BTAXLW1,
      TAXLAWIPI type J_1BTAXLW2,
      SD_TAXCODE type J_1BTXSDC_,
      VALCONTRNR type WKTNR,
      VALCONTRIT type WKTPS,
      ASSORT_MOD type W_SORTK,
      VALSPECSTO type KZBWS,
      MATGRHIE1 type WGRU_HIE1,
      MATGRHIE2 type WGRU_HIE2,
      PROMOTION type KNUMA_PI,
      SALES_DEAL type KNUMA_AG,
      FLGLEADUNI type KZFME,
      FREE_GOODS type LSTANR,
      VALID_OBJ type TECHS,
      TAX_AMOUNT type BAPICUREXT,
      MRP_AREA type BERID,
      CUST_MAT35 type KDMAT,
      CR_EXCHRAT_V type CMKUA_V,
      EXCHRATEST_V type STCUR_V,
      PCKG_NO type PACKNO,
      MATERIAL_EXTERNAL type MGV_MATERIAL_EXTERNAL,
      MATERIAL_GUID type MGV_MATERIAL_GUID,
      MATERIAL_VERSION type MGV_MATERIAL_VERSION,
      MAT_ENTRD_EXTERNAL type MGV_MAT_ENTRD_EXTERNAL,
      MAT_ENTRD_GUID type MGV_MAT_ENTRD_GUID,
      MAT_ENTRD_VERSION type MGV_MAT_ENTRD_VERSION,
      PLNG_MATL_EXTERNAL type MGV_PLNG_MATL_EXTERNAL,
      PLNG_MATL_GUID type MGV_PLNG_MATL_GUID,
      PLNG_MATL_VERSION type MGV_PLNG_MATL_VERSION,
      PRICE_REF_EXTERNAL type MGV_PRICE_REF_EXTERNAL,
      PRICE_REF_GUID type MGV_PRICE_REF_GUID,
      PRICE_REF_VERSION type MGV_PRICE_REF_VERSION,
      PR_REF_MAT_EXTERNAL type MGV_PR_REF_MAT_EXTERNAL,
      PR_REF_MAT_GUID type MGV_PR_REF_MAT_GUID,
      PR_REF_MAT_VERSION type MGV_PR_REF_MAT_VERSION,
      MATERIAL_LONG type MATNR40,
      MAT_ENTRD_LONG type MATWA40,
      PR_REF_MAT_LONG type PMATN40,
      PLNG_MATL_LONG type VPMAT40,
      PRICE_REF_LONG type UPMAT40,
      DOC_CAT_SD_LONG type VBTYPL_V,
    end of BAPISDITBOS .
  types:
    __BAPISDITBOS                  type standard table of BAPISDITBOS                    with non-unique default key .
  types:
    PARVW type C length 000002 .
  types:
    PERNR_D type N length 000008 .
  types:
    PARNR type N length 000010 .
  types:
    ABLAD type C length 000025 .
  types:
    LAND1 type C length 000003 .
  types:
    ADRDA type C length 000001 .
  types:
    XCPDK type C length 000001 .
  types:
    HITYP_KH type C length 000001 .
  types:
    PRFRE type C length 000001 .
  types:
    BOKRE type C length 000001 .
  types:
    HISTUNR type N length 000002 .
  types:
    KNREF type C length 000030 .
  types:
    HZUOR type N length 000002 .
  types:
    STCEG type C length 000020 .
  types:
    PARTNER_FF type C length 000001 .
  types:
    KALE type C length 000001 .
  types:
    begin of BAPISDPART,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      PARTN_ROLE type PARVW,
      CUSTOMER type KUNNR,
      VENDOR_NO type LIFNR,
      PERSON_NO type PERNR_D,
      CONTACT type PARNR,
      ADDRESS type ADRNR,
      UNLOAD_PT type ABLAD,
      COUNTRY type LAND1,
      COUNTRYISO type INTCA,
      ADDRE_INDI type ADRDA,
      ACC_1_TIME type XCPDK,
      CUSTHITYP type HITYP_KH,
      PRIC_REL type PRFRE,
      REBATE_REL type BOKRE,
      LEVEL_NR type HISTUNR,
      DESC_PARTN type KNREF,
      TRANSPZONE type LZONE,
      ASSIGN_HI type HZUOR,
      VAT_REG_NO type STCEG,
      FURTHERPAR type PARTNER_FF,
      PERS_NO type AD_PERSNUM,
      CALEND_UPD type KALE,
    end of BAPISDPART .
  types:
    __BAPISDPART                   type standard table of BAPISDPART                     with non-unique default key .
  types:
    ETENR type N length 000004 .
  types:
    ETTYP type C length 000002 .
  types:
    LFREL type C length 000001 .
  types EZEIT_VBEP type T .
  types:
    WMENG type P length 7  decimals 000003 .
  types:
    BMENG type P length 7  decimals 000003 .
  types:
    LMENG type P length 7  decimals 000003 .
  types:
    VBELE type C length 000010 .
  types:
    POSNE type N length 000006 .
  types:
    ETENE type N length 000004 .
  types:
    IDNNR type N length 000010 .
  types:
    BANFN type C length 000010 .
  types:
    BSART type C length 000004 .
  types:
    BSTYP type C length 000001 .
  types:
    WEPOS_A type C length 000001 .
  types:
    REPOS type C length 000001 .
  types:
    PRGRS type C length 000001 .
  types:
    CMENG type P length 7  decimals 000003 .
  types:
    LIFSP_EP type C length 000002 .
  types:
    GRSTR type N length 000003 .
  types:
    ABART type C length 000001 .
  types:
    ABRUF type N length 000010 .
  types:
    DCQNT type P length 7  decimals 000003 .
  types:
    ROMS2 type P length 7  decimals 000003 .
  types:
    ROMS3 type P length 7  decimals 000003 .
  types:
    ROMEI type C length 000003 .
  types:
    RFORM type C length 000002 .
  types:
    VERFP_MAS type C length 000001 .
  types:
    BNFPO type N length 000005 .
  types:
    EDI_ETTYP type C length 000001 .
  types:
    PLNUM type C length 000010 .
  types:
    AESKD type C length 000017 .
  types MBUHR type T .
  types TDUHR type T .
  types LDUHR type T .
  types WAUHR type T .
  types:
    AULWE type C length 000010 .
  types:
    begin of BAPISDHEDU,
      OPERATION type MSGFN,
      DOC_NUMBER type VBELN_VA,
      ITM_NUMBER type POSNR_VA,
      SCHED_LINE type ETENR,
      SCHED_TYPE type ETTYP,
      RELFORDEL type LFREL,
      REQ_DATE type DATS,
      REQ_TIME type EZEIT_VBEP,
      REQ_QTY type WMENG,
      CONFIR_QTY type BMENG,
      SALES_UNIT type VRKME,
      ISOCODUNIT type ISOCD_UNIT,
      REQ_QTY1 type LMENG,
      BASE_UOM type MEINS,
      ISOBASUNIT type ISO_ZIEME,
      REQ_DATE1 type DATS,
      REQ_TYPE type BDART,
      PLTYPE type PLART,
      BUSIDOCNR type VBELE,
      BUSIITNR type POSNE,
      SCHED_LIN1 type ETENE,
      EARL_DATE type DATS,
      MAINT_REQ type IDNNR,
      PREQ_NO type BANFN,
      PO_TYPE type BSART,
      DOC_CAT type BSTYP,
      CONF_STAT type WEPOS_A,
      IR_IND type REPOS,
      RETURNDATE type DATS,
      DATE_TYPE type PRGRS,
      TP_DATE type DATS,
      MS_DATE type DATS,
      LOAD_DATE type DATS,
      GI_DATE type DATS,
      CORR_QTY type CMENG,
      REQ_DLV_BL type LIFSP_EP,
      GRP_DEFIN type GRSTR,
      RELEASTYP type ABART,
      FORCAST_NR type ABRUF,
      COMMIT_QTY type DCQNT,
      SIZE2 type ROMS2,
      SIZE3 type ROMS3,
      UNIT_MEAS type ROMEI,
      ISO_ROMEI type ISO_ZIEME,
      FORMULAKEY type RFORM,
      SALESQTYNR type UMVKZ,
      SALESQTYDE type UMVKN,
      AVAIL_CON type VERFP_MAS,
      MOVE_TYPE type BWART,
      PREQ_ITEM type BNFPO,
      LINTYP_EDI type EDI_ETTYP,
      ORDERID type AUFNR,
      PLANORDNR type PLNUM,
      BOMEXPL_NO type SERNR,
      CUSTCHSTAT type AESKD,
      GURANTEED type ABGES_CM,
      MS_TIME type MBUHR,
      TP_TIME type TDUHR,
      LOAD_TIME type LDUHR,
      GI_TIME type WAUHR,
      ROUTESCHED type AULWE,
    end of BAPISDHEDU .
  types:
    __BAPISDHEDU                   type standard table of BAPISDHEDU                     with non-unique default key .
  types:
    SRV_LINE_NO type N length 000010 .
  types:
    EXTROW type N length 000010 .
  types:
    EXTGROUP type C length 000008 .
  types:
    OUTL_IND type C length 000001 .
  types:
    SUB_PACKNO type N length 000010 .
  types:
    DEL type C length 000001 .
  types:
    ASNUM type C length 000018 .
  types:
    LBNUM type C length 000003 .
  types:
    AUSGB type N length 000004 .
  types:
    STLVPOS type C length 000018 .
  types:
    EXTSRVNO type C length 000018 .
  types:
    MENGEV type P length 7  decimals 000003 .
  types:
    SUEBTO type P length 2  decimals 000001 .
  types:
    SUEBTK type C length 000001 .
  types:
    EPEIN type P length 3  decimals 000000 .
  types:
    BAPIGRVAL type P length 12  decimals 000004 .
  types:
    BAPINETVAL type P length 12  decimals 000004 .
  types:
    FROMPOS type C length 000006 .
  types:
    TO_POS type C length 000006 .
  types:
    SH_TEXT1 type C length 000040 .
  types:
    VRTKZ type C length 000001 .
  types:
    LGART type C length 000004 .
  types:
    PLN_PACKNO type N length 000010 .
  types:
    PLN_INTROW type N length 000010 .
  types:
    KNT_PACKNO type N length 000010 .
  types:
    KNT_INTROW type N length 000010 .
  types:
    TMP_PACKNO type N length 000010 .
  types:
    TMP_INTROW type N length 000010 .
  types:
    STLV_LIM type C length 000001 .
  types:
    LIMIT_ROW type N length 000010 .
  types:
    ACT_MENGE type P length 7  decimals 000003 .
  types:
    BACT_WERT type P length 12  decimals 000004 .
  types:
    BKNT_WERT type P length 12  decimals 000004 .
  types:
    KNT_MENGE type P length 7  decimals 000003 .
  types:
    BWERT_ZIEL type P length 12  decimals 000004 .
  types:
    BUNG_WERT type P length 12  decimals 000004 .
  types:
    UNG_MENGE type P length 7  decimals 000003 .
  types:
    ALT_INTROW type N length 000010 .
  types:
    GROUND type C length 000001 .
  types:
    ALTERNAT type C length 000001 .
  types:
    BIDDER type C length 000001 .
  types:
    SUPPLE type C length 000001 .
  types:
    FREEQTY type C length 000001 .
  types:
    INFORM type C length 000001 .
  types:
    PAUSCHPOS type C length 000001 .
  types:
    EVENTUAL type C length 000001 .
  types:
    PRS_CHG type C length 000001 .
  types:
    BAPINAVNW type P length 12  decimals 000004 .
  types BEGTI type T .
  types ENDTI type T .
  types:
    PERSEXT type C length 000040 .
  types:
    FORMELNR type C length 000010 .
  types:
    FRMVAL type P length 7  decimals 000003 .
  types:
    FRMVAL2 type P length 7  decimals 000003 .
  types:
    FRMVAL3 type P length 7  decimals 000003 .
  types:
    FRMVAL4 type P length 7  decimals 000003 .
  types:
    FRMVAL5 type P length 7  decimals 000003 .
  types:
    USERF1_NUM type N length 000010 .
  types:
    USERF2_NUM type P length 7  decimals 000003 .
  types:
    USERF1_TXT type C length 000040 .
  types:
    USERF2_TXT type C length 000010 .
  types:
    BAPIGRPRICE type P length 12  decimals 000004 .
  types:
    HI_LINE_NO type N length 000010 .
  types:
    EXTDES type C length 000010 .
  types:
    BOSGRP type C length 000004 .
  types:
    BOSINTER type C length 000001 .
  types:
    BOS_RISK type C length 000001 .
  types:
    BOSSUPPLENO type N length 000003 .
  types:
    BOSSUPPLESTATUS type N length 000001 .
  types:
    /SAPBOQ/OBJTYPE type C length 000001 .
  types:
    /SAPBOQ/SPOSNR type N length 000004 .
  types:
    /SAPBOQ/MI_LINE_NO type N length 000010 .
  types:
    /SAPBOQ/QT_REL type C length 000001 .
  types:
    /SAPBOQ/CK_QTY type C length 000001 .
  types:
    begin of BAPISDESLLBOS,
      PCKG_NO type PACKNO,
      LINE_NO type SRV_LINE_NO,
      EXT_LINE type EXTROW,
      OUTL_LEVEL type INT1,
      OUTL_NO type EXTGROUP,
      OUTL_IND type OUTL_IND,
      SUBPCKG_NO type SUB_PACKNO,
      DELETE_IND type DEL,
      SERVICE type ASNUM,
      SERV_TYPE type LBNUM,
      EDITION type AUSGB,
      SSC_ITEM type STLVPOS,
      EXT_SERV type EXTSRVNO,
      QUANTITY type MENGEV,
      BASE_UOM type MEINS,
      UOM_ISO type ISOCD_UNIT,
      OVF_TOL type SUEBTO,
      OVF_UNLIM type SUEBTK,
      PRICE_UNIT type EPEIN,
      GROSS_VAL type BAPIGRVAL,
      NET_VALUE type BAPINETVAL,
      FROM_LINE type FROMPOS,
      TO_LINE type TO_POS,
      SHORT_TEXT type SH_TEXT1,
      DISTRIB type VRTKZ,
      PERS_NO type PERNR_D,
      WAGETYPE type LGART,
      PLN_PCKG type PLN_PACKNO,
      PLN_LINE type PLN_INTROW,
      CON_PCKG type KNT_PACKNO,
      CON_LINE type KNT_INTROW,
      TMP_PCKG type TMP_PACKNO,
      TMP_LINE type TMP_INTROW,
      SSC_LIM type STLV_LIM,
      LIMIT_LINE type LIMIT_ROW,
      ACTUAL_QTY type ACT_MENGE,
      ACTUAL_VAL type BACT_WERT,
      CON_VALUE type BKNT_WERT,
      CON_QTY type KNT_MENGE,
      TARGET_VAL type BWERT_ZIEL,
      UNPL_VAL type BUNG_WERT,
      UNPL_QTY type UNG_MENGE,
      BASLINE_NO type ALT_INTROW,
      BASIC_LINE type GROUND,
      ALTERNAT type ALTERNAT,
      BIDDER type BIDDER,
      SUPP_LINE type SUPPLE,
      OPEN_QTY type FREEQTY,
      INFORM type INFORM,
      BLANKET type PAUSCHPOS,
      EVENTUAL type EVENTUAL,
      TAX_CODE type MWSKZ,
      TAXJURCODE type TXJCD,
      PRICE_CHG type PRS_CHG,
      MATL_GROUP type MATKL,
      NOND_ITAX type BAPINAVNW,
      DATE type DATS,
      BEGINTIME type BEGTI,
      ENDTIME type ENDTI,
      EXTPERS_NO type PERSEXT,
      FORMULA type FORMELNR,
      FORM_VAL1 type FRMVAL,
      FORM_VAL2 type FRMVAL2,
      FORM_VAL3 type FRMVAL3,
      FORM_VAL4 type FRMVAL4,
      FORM_VAL5 type FRMVAL5,
      USERF1_NUM type USERF1_NUM,
      USERF2_NUM type USERF2_NUM,
      USERF1_TXT type USERF1_TXT,
      USERF2_TXT type USERF2_TXT,
      GR_PRICE type BAPIGRPRICE,
      HI_LINE_NO type HI_LINE_NO,
      EXTDES type EXTDES,
      BOSGRP type BOSGRP,
      BOSINTER type BOSINTER,
      RISK_LINE type BOS_RISK,
      SUPPL_NO type BOSSUPPLENO,
      SUPPL_STATUS type BOSSUPPLESTATUS,
      OBJ_TYPE type /SAPBOQ/OBJTYPE,
      SI_LINE type /SAPBOQ/SPOSNR,
      MI_LINE_NO type /SAPBOQ/MI_LINE_NO,
      QT_REL type /SAPBOQ/QT_REL,
      LOT_SIZE type /SAPBOQ/CK_QTY,
    end of BAPISDESLLBOS .
  types:
    __BAPISDESLLBOS                type standard table of BAPISDESLLBOS                  with non-unique default key .
  types:
    BAPIKBETR1 type P length 15  decimals 000009 .
  types:
    KVMEI_ISO type C length 000003 .
  types:
    SWO_OBJTYP type C length 000010 .
  types:
    SWO_TYPEID type C length 000070 .
  types:
    LOGSYS type C length 000010 .
  types:
    BAPIKAWRT1 type P length 15  decimals 000009 .
  types:
    KKURS type P length 5  decimals 000005 .
  types:
    BAPIKWERT1 type P length 15  decimals 000009 .
  types:
    BAPIKSTBS1 type P length 15  decimals 000009 .
  types:
    begin of BAPIBOSCD,
      ITM_NUMBER type KPOSN,
      PCKG_NO type PACKNO,
      LINE_NO type SRV_LINE_NO,
      COND_ST_NO type STUNR,
      COND_COUNT type DZAEHK_SHORT,
      COND_TYPE type KSCHA,
      COND_VALUE type BAPIKBETR1,
      CURRENCY type WAERS,
      COND_UNIT type KMEIN,
      COND_P_UNT type KPEIN,
      CURR_ISO type WAERS_ISO,
      CD_UNT_ISO type KVMEI_ISO,
      REFOBJTYPE type SWO_OBJTYP,
      REFOBJKEY type SWO_TYPEID,
      REFLOGSYS type LOGSYS,
      APPLICATIO type KAPPL,
      CONPRICDAT type DATS,
      CALCTYPCON type KRECH,
      CONBASEVAL type BAPIKAWRT1,
      CONEXCHRAT type KKURS,
      NUMCONVERT type KUMZA,
      DENOMINATO type KUMNE,
      CONDTYPE type KNTYP,
      STAT_CON type KSTAT,
      SCALETYPE type STFKZ,
      ACCRUALS type KRUEK,
      CONINVOLST type KRELI,
      CONDORIGIN type KHERK,
      GROUPCOND type KGRPE,
      COND_UPDAT type KOUPD,
      ACCESS_SEQ type KOLNR_SHORT,
      CONDCOUNT type KOPOS,
      ROUNDOFFDI type BAPICUREXT,
      CONDVALUE type BAPIKWERT1,
      CURRENCY_2 type WAERK,
      CURR_ISO_2 type WAERS_ISO,
      CONDCNTRL type KSTEU,
      CONDISACTI type KINAK,
      CONDCLASS type KOAID,
      FACTBASVAL type KFAKTOR,
      SCALEBASIN type KZBZG,
      SCALBASVAL type BAPIKSTBS1,
      UNITMEASUR type KONMS,
      ISO_UNIT type ISOCD_UNIT,
      CURRENCKEY type KONWS,
      CURRENISO type WAERS_ISO,
      CONDINCOMP type KFKIV,
      CONDCONFIG type KVARC,
      CONDCHAMAN type KMPRS,
      ACCESS_SEQ_LONG type KOLNR,
    end of BAPIBOSCD .
  types:
    __BAPIBOSCD                    type standard table of BAPIBOSCD                      with non-unique default key .
  types:
    CK_POSNR type N length 000005 .
  types:
    XFLAG type C length 000001 .
  types:
    TYPPS type C length 000001 .
  types:
    KOKRS_HRK type C length 000004 .
  types:
    EXTNR type C length 000018 .
  types:
    LSTAR type C length 000006 .
  types:
    PSCHL type C length 000018 .
  types:
    INFNR type C length 000010 .
  types:
    EKORG type C length 000004 .
  types:
    CO_PRZNR type C length 000012 .
  types:
    ARBPL type C length 000008 .
  types:
    KKEK_ARBPLWERK type C length 000004 .
  types:
    KSTAR type C length 000010 .
  types:
    HRKFT type C length 000004 .
  types:
    CK_ELEMENTHS type N length 000003 .
  types:
    MENGE_POS type P length 8  decimals 000003 .
  types:
    CURRENCY type C length 000005 .
  types:
    CK_PRICE_TOTAL type P length 8  decimals 000002 .
  types:
    CK_PRICE_FIXED type P length 8  decimals 000002 .
  types:
    CK_PRICE_QUANTITY_UNIT type P length 3  decimals 000000 .
  types:
    PMEHT type C length 000003 .
  types:
    KLTXT type C length 000040 .
  types:
    ADBOS_ZUSCHLAG_WERT type P length 8  decimals 000002 .
  types:
    ADBOS_ZUSCHLAG_PROZ type P length 3  decimals 000002 .
  types:
    begin of BAPIBOSCOST,
      ITM_NUMBER type POSNR_VA,
      PCKG_NO type PACKNO,
      LINE_NO type SRV_LINE_NO,
      ITEM_NUMBER type CK_POSNR,
      FLAG_DELETE_ITEM type XFLAG,
      ITEM_CATEGORY type TYPPS,
      ORIGIN_CONTROLLING_AREA type KOKRS_HRK,
      BASE_PLANNING_OBJECT_NUMBER type EXTNR,
      COSTCENTER type KOSTL,
      ACTTYPE type LSTAR,
      MATERIAL type MATNR18,
      PLANT type WERKS_D,
      PSCHL type PSCHL,
      SERVICE type ASNUM,
      INFO_REC type INFNR,
      PURCH_ORG type EKORG,
      CO_BUSPROC type CO_PRZNR,
      VAL_TYPE type BWTAR_D,
      VENDOR_NO type LIFNR,
      WORK_CENTER type ARBPL,
      WORK_CENTER_PLANT type KKEK_ARBPLWERK,
      VALUATION_DATE type DATS,
      LATE_SCHED_FIN_DATE type DATS,
      COST_ELEM type KSTAR,
      ORIG_GROUP type HRKFT,
      COST_COMP type CK_ELEMENTHS,
      QUANTITY type MENGE_POS,
      BASE_UOM type MEINS,
      CURRENCY type CURRENCY,
      PRICE_TOTAL type CK_PRICE_TOTAL,
      PRICE_FIXED type CK_PRICE_FIXED,
      PRICE_QUANTITY type CK_PRICE_QUANTITY_UNIT,
      PRICE_QUANTITY_UNIT type PMEHT,
      DESCRIPT type KLTXT,
      MATL_GROUP type MATKL,
      VALUE_ADD_DED_01 type ADBOS_ZUSCHLAG_WERT,
      VALUE_ADD_DED_02 type ADBOS_ZUSCHLAG_WERT,
      VALUE_ADD_DED_03 type ADBOS_ZUSCHLAG_WERT,
      VALUE_ADD_DED_04 type ADBOS_ZUSCHLAG_WERT,
      VALUE_ADD_DED_05 type ADBOS_ZUSCHLAG_WERT,
      PERCENT_ADD_DED_01 type ADBOS_ZUSCHLAG_PROZ,
      PERCENT_ADD_DED_02 type ADBOS_ZUSCHLAG_PROZ,
      PERCENT_ADD_DED_03 type ADBOS_ZUSCHLAG_PROZ,
      PERCENT_ADD_DED_04 type ADBOS_ZUSCHLAG_PROZ,
      PERCENT_ADD_DED_05 type ADBOS_ZUSCHLAG_PROZ,
      MATERIAL_EXTERNAL type MGV_MATERIAL_EXTERNAL,
      MATERIAL_GUID type MGV_MATERIAL_GUID,
      MATERIAL_VERSION type MGV_MATERIAL_VERSION,
      MATERIAL_LONG type MATNR40,
    end of BAPIBOSCOST .
  types:
    __BAPIBOSCOST                  type standard table of BAPIBOSCOST                    with non-unique default key .
  types:
    TDID type C length 000004 .
  types:
    TDFORMAT type C length 000002 .
  types:
    TDLINE type C length 000132 .
  types:
    begin of BAPIESLLTX,
      PCKG_NO type PACKNO,
      LINE_NO type SRV_LINE_NO,
      TEXT_ID type TDID,
      FORMAT_COL type TDFORMAT,
      TEXT_LINE type TDLINE,
    end of BAPIESLLTX .
  types:
    __BAPIESLLTX                   type standard table of BAPIESLLTX                     with non-unique default key .
  types:
    RFSTK type C length 000001 .
  types:
    RFGSK type C length 000001 .
  types:
    BESTK type C length 000001 .
  types:
    LFSTK type C length 000001 .
  types:
    LKGSK type C length 000001 .
  types:
    WBSTK type C length 000001 .
  types:
    FKSTK type C length 000001 .
  types:
    FKSAK type C length 000001 .
  types:
    BUCHK type C length 000001 .
  types:
    ABSTK type C length 000001 .
  types:
    GBSTK type C length 000001 .
  types:
    KOSTK type C length 000001 .
  types:
    LVSTK type C length 000001 .
  types:
    UVALL_SU type C length 000001 .
  types:
    UVVLS_SU type C length 000001 .
  types:
    UVFAK_SU type C length 000001 .
  types:
    UVALL_UK type C length 000001 .
  types:
    UVVLK_UK type C length 000001 .
  types:
    UVFAK_UK type C length 000001 .
  types:
    UVPRS_UK type C length 000001 .
  types:
    VBOBJ type C length 000001 .
  types:
    FKIVK type C length 000001 .
  types:
    RELIK type C length 000001 .
  types:
    UVK01 type C length 000001 .
  types:
    UVK02 type C length 000001 .
  types:
    UVK03 type C length 000001 .
  types:
    UVK04 type C length 000001 .
  types:
    UVK05 type C length 000001 .
  types:
    UVS01 type C length 000001 .
  types:
    UVS02 type C length 000001 .
  types:
    UVS03 type C length 000001 .
  types:
    UVS04 type C length 000001 .
  types:
    UVS05 type C length 000001 .
  types:
    PKSTK type C length 000001 .
  types:
    CMPSA type C length 000001 .
  types:
    CMPSB type C length 000001 .
  types:
    CMPSC type C length 000001 .
  types:
    CMPSD type C length 000001 .
  types:
    CMPSE type C length 000001 .
  types:
    CMPSF type C length 000001 .
  types:
    CMPSG type C length 000001 .
  types:
    CMPSH type C length 000001 .
  types:
    CMPSI type C length 000001 .
  types:
    CMPSJ type C length 000001 .
  types:
    CMPSK type C length 000001 .
  types:
    CMPSL type C length 000001 .
  types:
    CMPS0 type C length 000001 .
  types:
    CMPS1 type C length 000001 .
  types:
    CMPS2 type C length 000001 .
  types:
    CMGST type C length 000001 .
  types:
    TRSTA type C length 000001 .
  types:
    KOQUK type C length 000001 .
  types:
    COSTA_D type C length 000001 .
  types:
    SAPRL type C length 000004 .
  types:
    UVPAK_SU type C length 000001 .
  types:
    UVPIK_SU type C length 000001 .
  types:
    UVWAK_SU type C length 000001 .
  types:
    UVPAK_UK type C length 000001 .
  types:
    UVPIK_UK type C length 000001 .
  types:
    UVWAK_UK type C length 000001 .
  types:
    UVGEK_UK type C length 000001 .
  types:
    CMPSM type C length 000001 .
  types:
    DCSTK type C length 000001 .
  types:
    VESTK type C length 000001 .
  types:
    VLSTK type C length 000001 .
  types:
    RR_STATUS type C length 000001 .
  types:
    BLOCK_VB type C length 000001 .
  types:
    FSSTK type C length 000001 .
  types:
    LSSTK_G type C length 000001 .
  types:
    SPSTG type C length 000001 .
  types:
    PDSTK type C length 000001 .
  types:
    FMSTK type C length 000001 .
  types:
    begin of BAPISDHDST,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      REFDOCHDST type RFSTK,
      TOTREFSTAT type RFGSK,
      CONFIRSTAT type BESTK,
      DELIV_STAT type LFSTK,
      DLV_STAT_H type LKGSK,
      TOTGOODSMV type WBSTK,
      BILLSTATUS type FKSTK,
      BILLINGSTA type FKSAK,
      ACCOUNTSTA type BUCHK,
      OVERALLREJ type ABSTK,
      PRC_STAT_H type GBSTK,
      OVERALLPIC type KOSTK,
      OVERALL_WM type LVSTK,
      TOTINCOMPL type UVALL_SU,
      TOTINCOMIT type UVVLS_SU,
      TOTINCOMBI type UVFAK_SU,
      GENINCOMHD type UVALL_UK,
      HDIMCOMDEL type UVVLK_UK,
      HDINCOMBIL type UVFAK_UK,
      DOCIMCOMPR type UVPRS_UK,
      SD_DOC_CAT type VBTYP,
      SDDOCOBJ type VBOBJ,
      CH_ON type DATS,
      BILTOTSTAT type FKIVK,
      INVOICSTAT type RELIK,
      CUSTRESHD1 type UVK01,
      CUSTRESHD2 type UVK02,
      CUSTRESHD3 type UVK03,
      CUSTRESHD4 type UVK04,
      CUSTRESHD5 type UVK05,
      CUSTRESIT1 type UVS01,
      CUSTRESIT2 type UVS02,
      CUSTRESIT3 type UVS03,
      CUSTRESIT4 type UVS04,
      CUSTRESIT5 type UVS05,
      TOTSTATIT type PKSTK,
      STATSTACLC type CMPSA,
      STATDYNCLC type CMPSB,
      STATCREDCH type CMPSC,
      STATCRECH1 type CMPSD,
      STATCRECH2 type CMPSE,
      STATCRECH3 type CMPSF,
      STATCRECH4 type CMPSG,
      STATCRECH5 type CMPSH,
      STATCRECH6 type CMPSI,
      STATCRECH7 type CMPSJ,
      STATCRECH8 type CMPSK,
      STATCRECH9 type CMPSL,
      STATCRECHA type CMPS0,
      STATCRECHB type CMPS1,
      STATCRECHC type CMPS2,
      TOTSTATCCH type CMGST,
      TRNSPLANST type TRSTA,
      QUITTSTAT type KOQUK,
      CONFIRMSTA type COSTA_D,
      SAPRELEASE type SAPRL,
      TOTINCOMI type UVPAK_SU,
      TOTINCOMI1 type UVPIK_SU,
      TOTINCOMI2 type UVWAK_SU,
      HDINCOMPL type UVPAK_UK,
      HDINCOMPL1 type UVPIK_UK,
      HDINCOMPL2 type UVWAK_UK,
      HDINCOMPL3 type UVGEK_UK,
      CREDCHECK type CMPSM,
      DELAYSTAT type DCSTK,
      SHIPPUNIT type VESTK,
      DISTRISTAT type VLSTK,
      REVDETSTAT type RR_STATUS,
      INDIDOCACH type BLOCK_VB,
      TOBILBLOST type FSSTK,
      TODELBLOST type LSSTK_G,
      TOBLOCKSTA type SPSTG,
      LEBHEADSTA type PDSTK,
      FMSTATUS type FMSTK,
      SD_DOC_CAT_LONG type VBTYPL,
    end of BAPISDHDST .
  types:
    __BAPISDHDST                   type standard table of BAPISDHDST                     with non-unique default key .
  types:
    RFSTA type C length 000001 .
  types:
    RFGSA type C length 000001 .
  types:
    BESTA type C length 000001 .
  types:
    LFSTA type C length 000001 .
  types:
    LFGSA type C length 000001 .
  types:
    WBSTA type C length 000001 .
  types:
    FKSTA type C length 000001 .
  types:
    FKSAA type C length 000001 .
  types:
    ABSTA_VB type C length 000001 .
  types:
    GBSTA type C length 000001 .
  types:
    KOSTA type C length 000001 .
  types:
    LVSTA type C length 000001 .
  types:
    UVALL_UP type C length 000001 .
  types:
    UVVLK_UP type C length 000001 .
  types:
    UVFAK_UP type C length 000001 .
  types:
    UVPRS_UP type C length 000001 .
  types:
    FKIVP type C length 000001 .
  types:
    UVP01 type C length 000001 .
  types:
    UVP02 type C length 000001 .
  types:
    UVP03 type C length 000001 .
  types:
    UVP04 type C length 000001 .
  types:
    UVP05 type C length 000001 .
  types:
    PKSTA type C length 000001 .
  types:
    KOQUA type C length 000001 .
  types:
    UVPIP_UP type C length 000001 .
  types:
    UVPAP_UP type C length 000001 .
  types:
    UVWAP_UP type C length 000001 .
  types:
    DCSTA type C length 000001 .
  types:
    VLSTP type C length 000001 .
  types:
    FSSTA type C length 000001 .
  types:
    LSSTA type C length 000001 .
  types:
    PDSTA type C length 000001 .
  types:
    begin of BAPISDITST,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      REFERNSTAT type RFSTA,
      REFTOTSTAT type RFGSA,
      CONFSTATIT type BESTA,
      DELIV_STAT type LFSTA,
      DLV_STAT_I type LFGSA,
      GOODSMVSTA type WBSTA,
      BILLSTATHD type FKSTA,
      BILLSTATIT type FKSAA,
      REJSTATIT type ABSTA_VB,
      OVRPROCSTA type GBSTA,
      PICKINGSTA type KOSTA,
      WHMANAGSTA type LVSTA,
      GENINCOMST type UVALL_UP,
      INCOMSTDEL type UVVLK_UP,
      INCOMSTBIL type UVFAK_UP,
      INCOMSTPRI type UVPRS_UP,
      BILLSTAINT type FKIVP,
      CUSTRESIT1 type UVP01,
      CUSTRESIT2 type UVP02,
      CUSTRESIT3 type UVP03,
      CUSTRESIT4 type UVP04,
      CUSTRESIT5 type UVP05,
      PACKSTSTIT type PKSTA,
      STAPICKCON type KOQUA,
      CONFIRMSTA type COSTA_D,
      STATCRECH6 type CMPSI,
      STATCRECH7 type CMPSJ,
      INCOMSTAIT type UVPIP_UP,
      INCOMSTAPA type UVPAP_UP,
      INCOSTAGOO type UVWAP_UP,
      DELAYSTAT type DCSTA,
      REVDETSTAT type RR_STATUS,
      DECTWHOUSE type VLSTP,
      ITBILBLOST type FSSTA,
      ITDELBLOST type LSSTA,
      LEBITEMSTA type PDSTA,
    end of BAPISDITST .
  types:
    __BAPISDITST                   type standard table of BAPISDITST                     with non-unique default key .
  types:
    TDOBJECT type C length 000010 .
  types:
    TDOBNAME type C length 000070 .
  types:
    TDTITLE type C length 000050 .
  types:
    TDFORM type C length 000016 .
  types:
    TDSTYLE type C length 000008 .
  types:
    TDVERSION type N length 000005 .
  types:
    TDFUSER type C length 000012 .
  types:
    TDFRELES type C length 000004 .
  types TDFTIME type T .
  types:
    TDLUSER type C length 000012 .
  types:
    TDLRELES type C length 000004 .
  types TDLTIME type T .
  types:
    TDLINESIZE type N length 000003 .
  types:
    TDTXTLINES type N length 000005 .
  types:
    TDHYPHENAT type C length 000001 .
  types:
    TDOSPRAS type C length 000001 .
  types:
    TDTRANSTAT type N length 000001 .
  types:
    TDMACODE1 type C length 000016 .
  types:
    TDMACODE2 type C length 000016 .
  types:
    TDREFOBJ type C length 000010 .
  types:
    TDREFNAME type C length 000070 .
  types:
    TDREFID type C length 000004 .
  types:
    TDTEXTTYPE type C length 000006 .
  types:
    TDCOMPRESS type C length 000001 .
  types:
    TDOCLASS type C length 000004 .
  types:
    begin of BAPISDTEHD,
      OPERATION type MSGFN,
      SD_DOC type VBELN,
      ITM_NUMBER type POSNR,
      APPLOBJECT type TDOBJECT,
      TEXT_NAME type TDOBNAME,
      TEXT_ID type TDID,
      LANGU type SPRAS,
      LANGU_ISO type LAISO,
      TITLE type TDTITLE,
      FORM type TDFORM,
      STYLE type TDSTYLE,
      VERSION type TDVERSION,
      CREATEUSER type TDFUSER,
      CREATEREL type TDFRELES,
      CREATEDATE type DATS,
      CREATETIME type TDFTIME,
      CHANGEUSER type TDLUSER,
      CHANGEREL type TDLRELES,
      CHANGEDATE type DATS,
      CHANGETIME type TDLTIME,
      LINESIZE type TDLINESIZE,
      LINEAMOUNT type TDTXTLINES,
      HYPHENAT type TDHYPHENAT,
      ORGSPRAS type TDOSPRAS,
      ORGSPRAISO type LAISO,
      TRANSTAT type TDTRANSTAT,
      MATCHCOD1 type TDMACODE1,
      MATCHCOD2 type TDMACODE2,
      REFOBJECT type TDREFOBJ,
      REFNAME type TDREFNAME,
      REFID type TDREFID,
      TEXTTYPE type TDTEXTTYPE,
      COMPRESSTD type TDCOMPRESS,
      OBJ_CLASS type TDOCLASS,
    end of BAPISDTEHD .
  types:
    __BAPISDTEHD                   type standard table of BAPISDTEHD                     with non-unique default key .
  types:
    begin of BAPITEXTLI,
      OPERATION type MSGFN,
      APPLOBJECT type TDOBJECT,
      TEXT_NAME type TDOBNAME,
      TEXT_ID type TDID,
      LANGU type SPRAS,
      LANGU_ISO type LAISO,
      LINE_CNT type CIM_COUNT,
      LINE type TDLINE,
      FORMAT_COL type TDFORMAT,
    end of BAPITEXTLI .
  types:
    __BAPITEXTLI                   type standard table of BAPITEXTLI                     with non-unique default key .
  types:
    BAPI_MTYPE type C length 000001 .
  types:
    SYMSGID type C length 000020 .
  types:
    SYMSGNO type N length 000003 .
  types:
    BAPI_MSG type C length 000220 .
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
endinterface.
