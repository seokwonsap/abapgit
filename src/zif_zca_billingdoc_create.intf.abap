interface ZIF_ZCA_BILLINGDOC_CREATE
  public .


  types:
    VBELN type C length 000010 .
  types:
    BAPI_MSG type C length 000220 .
  types:
    POSNR type N length 000006 .
  types:
    VBTYP_V type C length 000001 .
  types:
    AUFNR type C length 000012 .
  types:
    RKEOBJNR type N length 000010 .
  types:
    KOSTL type C length 000010 .
  types:
    PS_PSP_PNR type N length 000008 .
  types:
    LANDTX type C length 000003 .
  types:
    LAND1TX type C length 000003 .
  types:
    CORR_VKONT_KK type C length 000012 .
  types:
    /CWM/MENGE type P length 7  decimals 000003 .
  types:
    /CWM/MEINS type C length 000003 .
  types:
    VBTYPL_V type C length 000004 .
  types:
    INCOV type C length 000004 .
  types:
    INCO2_L type C length 000070 .
  types:
    INCO3_L type C length 000070 .
  types:
    MATNR40 type C length 000040 .
  types:
    begin of BAPIVBRK_APPEND,
      REF_DOC_CA type VBTYP_V,
      ORDERID type AUFNR,
      PROFIT_SEGM_NO type RKEOBJNR,
      COSTCENTER type KOSTL,
      WBS_ELEM type PS_PSP_PNR,
      TAX_DEPART_CTY type LANDTX,
      TAX_DEST_CTY type LAND1TX,
      SERV_DATE type DATS,
      CONT_ACCT type CORR_VKONT_KK,
      PARALLEL_QTY type /CWM/MENGE,
      PARALLEL_UOM type /CWM/MEINS,
      REF_DOC_CA_LONG type VBTYPL_V,
      INCOTERMSV type INCOV,
      INCOTERMS2L type INCO2_L,
      INCOTERMS3L type INCO3_L,
      MATERIAL_LONG type MATNR40,
    end of BAPIVBRK_APPEND .
  types:
    VKORG type C length 000004 .
  types:
    VTWEG type C length 000002 .
  types:
    SPART type C length 000002 .
  types:
    AUART type C length 000004 .
  types:
    FKARA type C length 000004 .
  types:
    KUNAG type C length 000010 .
  types:
    PSTYV type C length 000004 .
  types:
    KTGRM type C length 000002 .
  types:
    ALAND type C length 000003 .
  types:
    WERKS_D type C length 000004 .
  types:
    KUNRE type C length 000010 .
  types:
    KUNRG type C length 000010 .
  types:
    KUNWE type C length 000010 .
  types:
    VGBEL type C length 000010 .
  types:
    MATNR18 type C length 000018 .
  types:
    KWMENG type P length 8  decimals 000003 .
  types:
    WAERK type C length 000005 .
  types:
    ARKTX type C length 000040 .
  types:
    TAXM1 type C length 000001 .
  types:
    VGPOS type N length 000006 .
  types:
    VERSG type C length 000001 .
  types:
    NO_MARA type C length 000001 .
  types:
    CADNR type C length 000010 .
  types:
    ANRED type C length 000015 .
  types:
    NAME1_GP type C length 000035 .
  types:
    NAME2_GP type C length 000035 .
  types:
    PSTLZ type C length 000010 .
  types:
    ELAND type C length 000003 .
  types:
    ORT01_GP type C length 000035 .
  types:
    ORT02_GP type C length 000035 .
  types:
    STRAS_GP type C length 000035 .
  types:
    REGIO type C length 000003 .
  types:
    PRODH_D type C length 000018 .
  types:
    VRKME type C length 000003 .
  types:
    PRCTR type C length 000010 .
  types:
    TXJCD type C length 000015 .
  types:
    BSTKD type C length 000035 .
  types:
    VBELN_VA type C length 000010 .
  types:
    POSNR_VA type N length 000006 .
  types:
    VBELV type C length 000010 .
  types:
    POSNV type N length 000006 .
  types:
    ERNAM type C length 000012 .
  types:
    MGV_MATERIAL_EXTERNAL type C length 000040 .
  types:
    MGV_MATERIAL_GUID type C length 000032 .
  types:
    MGV_MATERIAL_VERSION type C length 000010 .
  types:
    BAPIINCO1 type C length 000003 .
  types:
    BAPIINCO2 type C length 000028 .
  types:
    BAPIKURSK type P length 5  decimals 000005 .
  types:
    DZTERM type C length 000004 .
  types:
    BAPIUEPOS type N length 000006 .
  types:
    begin of BAPIVBRK,
      SALESORG type VKORG,
      DISTR_CHAN type VTWEG,
      DIVISION type SPART,
      DOC_TYPE type AUART,
      ORDBILLTYP type FKARA,
      BILL_DATE type DATS,
      SOLD_TO type KUNAG,
      ITEM_CATEG type PSTYV,
      ACCTASGNMT type KTGRM,
      PRICE_DATE type DATS,
      COUNTRY type ALAND,
      PLANT type WERKS_D,
      BILL_TO type KUNRE,
      PAYER type KUNRG,
      SHIP_TO type KUNWE,
      REF_DOC type VGBEL,
      MATERIAL type MATNR18,
      REQ_QTY type KWMENG,
      CURRENCY type WAERK,
      SHORT_TEXT type ARKTX,
      TAXCL_1MAT type TAXM1,
      REF_ITEM type VGPOS,
      STAT_GROUP type VERSG,
      NO_MATMAST type NO_MARA,
      ADDR_NO type CADNR,
      TITLE type ANRED,
      NAME type NAME1_GP,
      NAME_2 type NAME2_GP,
      POSTL_CODE type PSTLZ,
      CONSUMCTRY type ELAND,
      CITY type ORT01_GP,
      DISTRICT type ORT02_GP,
      STREET type STRAS_GP,
      REGION type REGIO,
      PROD_HIER type PRODH_D,
      SALES_UNIT type VRKME,
      PROFIT_CTR type PRCTR,
      TAXJURCODE type TXJCD,
      PURCH_ORD type BSTKD,
      DOC_NUMBER type VBELN_VA,
      ITM_NUMBER type POSNR_VA,
      ORIGINDOC type VBELV,
      ITEM type POSNV,
      CREATED_BY type ERNAM,
      MATERIAL_EXTERNAL type MGV_MATERIAL_EXTERNAL,
      MATERIAL_GUID type MGV_MATERIAL_GUID,
      MATERIAL_VERSION type MGV_MATERIAL_VERSION,
      INCOTERMS1 type BAPIINCO1,
      INCOTERMS2 type BAPIINCO2,
      EXCHANGE_RATE type BAPIKURSK,
      PAYMENT_TERMS type DZTERM,
      HG_LV_ITEM type BAPIUEPOS.
    include type BAPIVBRK_APPEND.
    types:
    end of BAPIVBRK .
  types:
    __BAPIVBRK                     type standard table of BAPIVBRK                       with non-unique default key .
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
    begin of BAPIVBRKERRORS,
      REF_DOC type VGBEL,
      REF_DOC_ITEM type VGPOS,
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
    end of BAPIVBRKERRORS .
  types:
    __BAPIVBRKERRORS               type standard table of BAPIVBRKERRORS                 with non-unique default key .
  types:
    HANDOVER_LOC type C length 000010 .
  types HANDOVER_TIME type T .
  types:
    HANDOVER_TIMEZONE type C length 000006 .
  types:
    begin of HANDOVER_LOCATION_PROCESS_STY,
      HANDOVERLOC type HANDOVER_LOC,
      HANDOVERDATE type DATS,
      HANDOVERTIME type HANDOVER_TIME,
      HANDOVERTZONE type HANDOVER_TIMEZONE,
    end of HANDOVER_LOCATION_PROCESS_STY .
  types:
    /SAPMP/LBASTAT type C length 000001 .
  types:
    begin of /SAPMP/LBASK_LIKP_STATUS,
      _/SAPMP/LBASK type /SAPMP/LBASTAT,
    end of /SAPMP/LBASK_LIKP_STATUS .
  types:
    BESTK type C length 000001 .
  types:
    CMPSC type C length 000001 .
  types:
    CMPSD type C length 000001 .
  types:
    CMPSI type C length 000001 .
  types:
    CMPSJ type C length 000001 .
  types:
    CMPSK type C length 000001 .
  types:
    CMPS_CM type C length 000001 .
  types:
    CMPS_TE type C length 000001 .
  types:
    CMGST type C length 000001 .
  types:
    FKIVK type C length 000001 .
  types:
    FKSTK type C length 000001 .
  types:
    GBSTK type C length 000001 .
  types:
    /SPE/INB_HDALL type C length 000001 .
  types:
    /SPE/INB_HDALS type C length 000001 .
  types:
    KOQUK type C length 000001 .
  types:
    KOSTK type C length 000001 .
  types:
    LVSTK type C length 000001 .
  types:
    PDSTK type C length 000001 .
  types:
    PKSTK type C length 000001 .
  types:
    /SPE/TMPID type C length 000001 .
  types:
    SPSTG type C length 000001 .
  types:
    TRSTA type C length 000001 .
  types:
    UVALL_UK type C length 000001 .
  types:
    UVALL_SU type C length 000001 .
  types:
    UVFAK_UK type C length 000001 .
  types:
    UVFAK_SU type C length 000001 .
  types:
    UVPAK_UK type C length 000001 .
  types:
    UVPAK_SU type C length 000001 .
  types:
    UVPIK_UK type C length 000001 .
  types:
    UVPIK_SU type C length 000001 .
  types:
    UVVLK_UK type C length 000001 .
  types:
    UVVLS_SU type C length 000001 .
  types:
    UVWAK_UK type C length 000001 .
  types:
    UVWAK_SU type C length 000001 .
  types:
    VESTK type C length 000001 .
  types:
    VLSTK type C length 000001 .
  types:
    WBSTK type C length 000001 .
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
    begin of LIKP_STATUS,
      BESTK type BESTK,
      CMPSC type CMPSC,
      CMPSD type CMPSD,
      CMPSI type CMPSI,
      CMPSJ type CMPSJ,
      CMPSK type CMPSK,
      CMPS_CM type CMPS_CM,
      CMPS_TE type CMPS_TE,
      CMGST type CMGST,
      FKIVK type FKIVK,
      FKSTK type FKSTK,
      GBSTK type GBSTK,
      HDALL type /SPE/INB_HDALL,
      HDALS type /SPE/INB_HDALS,
      KOQUK type KOQUK,
      KOSTK type KOSTK,
      LVSTK type LVSTK,
      PDSTK type PDSTK,
      PKSTK type PKSTK,
      SPE_TMPID type /SPE/TMPID,
      SPSTG type SPSTG,
      TRSTA type TRSTA,
      UVALL type UVALL_UK,
      UVALS type UVALL_SU,
      UVFAK type UVFAK_UK,
      UVFAS type UVFAK_SU,
      UVPAK type UVPAK_UK,
      UVPAS type UVPAK_SU,
      UVPIK type UVPIK_UK,
      UVPIS type UVPIK_SU,
      UVVLK type UVVLK_UK,
      UVVLS type UVVLS_SU,
      UVWAK type UVWAK_UK,
      UVWAS type UVWAK_SU,
      VESTK type VESTK,
      VLSTK type VLSTK,
      WBSTK type WBSTK,
      UVK01 type UVK01,
      UVK02 type UVK02,
      UVK03 type UVK03,
      UVK04 type UVK04,
      UVK05 type UVK05,
      UVS01 type UVS01,
      UVS02 type UVS02,
      UVS03 type UVS03,
      UVS04 type UVS04,
      UVS05 type UVS05.
    include type /SAPMP/LBASK_LIKP_STATUS.
    types:
    end of LIKP_STATUS .
  types:
    begin of INCO_L,
      INCOV type INCOV,
      INCO2_L type INCO2_L,
      INCO3_L type INCO3_L,
    end of INCO_L .
  types:
    /BEV1/LULEINH type N length 000008 .
  types:
    begin of /BEV1/LUTRANS1,
      _/BEV1/LULEINH type /BEV1/LULEINH,
    end of /BEV1/LUTRANS1 .
  types:
    begin of /BEV1/LULIKP_A.
    include type /BEV1/LUTRANS1.
    types:
    end of /BEV1/LULIKP_A .
  types:
    /BEV1/RPFAESSER type P length 4  decimals 000000 .
  types:
    /BEV1/RPKISTEN type P length 4  decimals 000000 .
  types:
    /BEV1/RPONTAIN type P length 4  decimals 000000 .
  types:
    /BEV1/RPSONST type P length 4  decimals 000000 .
  types:
    begin of /BEV1/RPTDSUFEI,
      _/BEV1/RPFAESS type /BEV1/RPFAESSER,
      _/BEV1/RPKIST type /BEV1/RPKISTEN,
      _/BEV1/RPCONT type /BEV1/RPONTAIN,
      _/BEV1/RPSONST type /BEV1/RPSONST,
    end of /BEV1/RPTDSUFEI .
  types:
    /DSD/RP_SEQUENCENR type N length 000005 .
  types:
    begin of /BEV1/RPDDFLGNR,
      _/BEV1/RPFLGNR type /DSD/RP_SEQUENCENR,
    end of /BEV1/RPDDFLGNR .
  types:
    begin of /BEV1/RPLIKP_A.
    include type /BEV1/RPTDSUFEI.
    include type /BEV1/RPDDFLGNR.
    types:
    end of /BEV1/RPLIKP_A .
  types:
    IDT_CUR_EVTLOC type C length 000010 .
  types:
    IDT_CUR_EVTQUA type C length 000001 .
  types:
    IDT_CUR_EVTTST type P length 8  decimals 000000 .
  types:
    IDT_CUR_ESTLOC type C length 000010 .
  types:
    IDT_CUR_ESTQUA type C length 000001 .
  types:
    IDT_CUR_ESTTST type P length 8  decimals 000000 .
  types:
    IDT_CUR_WRKQUA type C length 000010 .
  types:
    IDT_PRE_EVTLOC type C length 000010 .
  types:
    IDT_PRE_EVTQUA type C length 000001 .
  types:
    IDT_PRE_EVTTST type P length 8  decimals 000000 .
  types:
    IDT_PRE_ESTLOC type C length 000010 .
  types:
    IDT_PRE_ESTQUA type C length 000001 .
  types:
    IDT_PRE_ESTTST type P length 8  decimals 000000 .
  types:
    IDT_PRE_WRKQUA type C length 000010 .
  types:
    IDT_REF_ESTLOC type C length 000010 .
  types:
    IDT_REF_ESTQUA type C length 000001 .
  types:
    IDT_REF_ESTTST type P length 8  decimals 000000 .
  types:
    IDT_FIRM_LFDAT type C length 000002 .
  types:
    EDI_DOCNUM type N length 000016 .
  types:
    begin of BORRS_IDT,
      IDT_CUR_EVTLOC type IDT_CUR_EVTLOC,
      IDT_CUR_EVTQUA type IDT_CUR_EVTQUA,
      IDT_CUR_EVTTST type IDT_CUR_EVTTST,
      IDT_CUR_ESTLOC type IDT_CUR_ESTLOC,
      IDT_CUR_ESTQUA type IDT_CUR_ESTQUA,
      IDT_CUR_ESTTST type IDT_CUR_ESTTST,
      IDT_CUR_WRKQUA type IDT_CUR_WRKQUA,
      IDT_PRE_EVTLOC type IDT_PRE_EVTLOC,
      IDT_PRE_EVTQUA type IDT_PRE_EVTQUA,
      IDT_PRE_EVTTST type IDT_PRE_EVTTST,
      IDT_PRE_ESTLOC type IDT_PRE_ESTLOC,
      IDT_PRE_ESTQUA type IDT_PRE_ESTQUA,
      IDT_PRE_ESTTST type IDT_PRE_ESTTST,
      IDT_PRE_WRKQUA type IDT_PRE_WRKQUA,
      IDT_REF_ESTLOC type IDT_REF_ESTLOC,
      IDT_REF_ESTQUA type IDT_REF_ESTQUA,
      IDT_REF_ESTTST type IDT_REF_ESTTST,
      IDT_FIRM_LFDAT type IDT_FIRM_LFDAT,
      IDT_DOCNUM type EDI_DOCNUM,
    end of BORRS_IDT .
  types:
    BORGR_GRP type C length 000035 .
  types:
    begin of DIMP_BOR_LIKP,
      BORGR_GRP type BORGR_GRP,
    end of DIMP_BOR_LIKP .
  types:
    KBNKZ type C length 000001 .
  types:
    begin of DIMP_PK_LIKP,
      KBNKZ type KBNKZ,
    end of DIMP_PK_LIKP .
  types:
    FSH_TRANSACTION type C length 000010 .
  types:
    FSH_VAS_LAST_ITEM type N length 000005 .
  types:
    FSH_VAS_CG_D type C length 000003 .
  types:
    begin of FSH_LIKPDATA_DATA,
      FSH_TRANSACTION type FSH_TRANSACTION,
      FSH_VAS_LAST_ITEM type FSH_VAS_LAST_ITEM,
      FSH_VAS_CG type FSH_VAS_CG_D,
    end of FSH_LIKPDATA_DATA .
  types:
    MANDT type C length 000003 .
  types:
    VBELN_VL type C length 000010 .
  types ERZET type T .
  types:
    BZIRK type C length 000006 .
  types:
    VSTEL type C length 000004 .
  types:
    LFART type C length 000004 .
  types:
    AUTLF type C length 000001 .
  types:
    KZAZU_D type C length 000001 .
  types:
    ABLAD type C length 000025 .
  types:
    INCO1 type C length 000003 .
  types:
    INCO2 type C length 000028 .
  types:
    EXPKZ type C length 000001 .
  types:
    ROUTE type C length 000006 .
  types:
    FAKSK type C length 000002 .
  types:
    LIFSK type C length 000002 .
  types:
    VBTYPL type C length 000004 .
  types:
    KNFAK type C length 000002 .
  types:
    TPQUA type C length 000001 .
  types:
    TPGRP type C length 000002 .
  types:
    LPRIO type N length 000002 .
  types:
    VSBED type C length 000002 .
  types:
    KDGRP type C length 000002 .
  types:
    STZKL type P length 2  decimals 000002 .
  types:
    STZZU type P length 2  decimals 000000 .
  types:
    GSGEW type P length 8  decimals 000003 .
  types:
    NTGEW_15 type P length 8  decimals 000003 .
  types:
    GEWEI type C length 000003 .
  types:
    VOLUM_15 type P length 8  decimals 000003 .
  types:
    VOLEH type C length 000003 .
  types:
    ANZPK type N length 000005 .
  types:
    BEROT type C length 000020 .
  types LFUHR type T .
  types:
    GRULG type C length 000004 .
  types:
    LSTEL type C length 000002 .
  types:
    TRAGR type C length 000004 .
  types:
    FKARV type C length 000004 .
  types:
    PERFK type C length 000002 .
  types:
    STAFO type C length 000006 .
  types:
    KALSM_D type C length 000006 .
  types:
    KNUMV type C length 000010 .
  types:
    VKBUR type C length 000004 .
  types:
    VBEAK type P length 4  decimals 000002 .
  types:
    DZUKRL type C length 000040 .
  types:
    VERUR_VL type C length 000035 .
  types:
    COMMN type C length 000005 .
  types:
    STWAE type C length 000005 .
  types:
    STCUR type P length 5  decimals 000005 .
  types:
    EXNUM type C length 000010 .
  types:
    AENAM type C length 000012 .
  types:
    LGNUM type C length 000003 .
  types:
    LNSPL_LIKP type C length 000001 .
  types:
    VKOIV type C length 000004 .
  types:
    VTWIV type C length 000002 .
  types:
    SPAIV type C length 000002 .
  types:
    FKAIV type C length 000004 .
  types:
    PIOIV type C length 000002 .
  types:
    KUNIV type C length 000010 .
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
    AMTBL_CM type P length 8  decimals 000002 .
  types:
    BOLNR type C length 000035 .
  types:
    ELIFN type C length 000010 .
  types:
    TRATY type C length 000004 .
  types:
    TRAID type C length 000020 .
  types:
    XABLN type C length 000010 .
  types:
    TRSPG type C length 000002 .
  types:
    TPSID type C length 000005 .
  types:
    LIFEX type C length 000035 .
  types:
    KALSMA_CH type C length 000006 .
  types:
    KLIEF type C length 000001 .
  types:
    KALSP type C length 000006 .
  types:
    KNUMP type C length 000010 .
  types:
    NETWR_AK type P length 8  decimals 000002 .
  types:
    AULWE type C length 000010 .
  types:
    EMPFW type C length 000004 .
  types:
    LCNUM type C length 000010 .
  types:
    ABSSCHE_CM type C length 000006 .
  types KOUHR type T .
  types TDUHR type T .
  types LDUHR type T .
  types WAUHR type T .
  types:
    LGTOR type C length 000003 .
  types:
    LGBZO type C length 000010 .
  types:
    AKWAE type C length 000005 .
  types:
    AKKUR type P length 5  decimals 000005 .
  types:
    AKPRZ type P length 3  decimals 000002 .
  types:
    ADGE_PROLI type C length 000003 .
  types:
    XBLNR_LIKP type C length 000025 .
  types:
    TSEGGUID_LIKP type C length 000022 .
  types:
    TSEGEXISTS type C length 000001 .
  types:
    TSEGTPLLIK type C length 000010 .
  types:
    TSEGZONISS type C length 000006 .
  types:
    TSEGZONREC type C length 000006 .
  types:
    ADGE_NCDG type C length 000001 .
  types:
    VERURSYS type C length 000010 .
  types:
    KZWAB type C length 000001 .
  types:
    TCODE type C length 000020 .
  types:
    VSARTTR type C length 000002 .
  types:
    TRMTYP type C length 000040 .
  types:
    SDABW type C length 000004 .
  types:
    VBUND type C length 000006 .
  types:
    XWOFF type C length 000001 .
  types:
    LVS_DIRTA type C length 000001 .
  types:
    PRVBE type C length 000010 .
  types POTIM type T .
  types:
    IMWRK type C length 000001 .
  types:
    LOEKZ_BK type C length 000001 .
  types:
    /SPE/RET_LOC_SEQ_D type C length 000003 .
  types:
    /SPE/RET_ACC_APP_STS type C length 000001 .
  types:
    /SPE/RET_SHP_INF_STS type C length 000001 .
  types:
    /SPE/RET_CANC type C length 000001 .
  types:
    TZNZONE type C length 000006 .
  types:
    /SPE/LE_SCENARIO type C length 000001 .
  types:
    /SPE/INB_ORIGIN_SYS type C length 000001 .
  types:
    /SPE/INB_CHNG_SYS type C length 000001 .
  types:
    /SPE/DE_ROUTE_ID type C length 000010 .
  types:
    /SPE/DE_ROUTE_IND type C length 000001 .
  types:
    /SPE/DE_CARRIER_IND type C length 000001 .
  types:
    /SPE/DE_LEG_GTS_CODE type C length 000002 .
  types:
    /SPE/DE_ROUTE_GTS_CODE type C length 000010 .
  types:
    /SPE/DE_RELEASE_TMSTMP type P length 8  decimals 000000 .
  types:
    /SPE/DE_UNIT_SYSTEM type C length 000010 .
  types:
    /SPE/INV_BFR_GI type C length 000001 .
  types:
    /SPE/RET_QI_STATUS type C length 000001 .
  types:
    /SPE/RED_IND type C length 000001 .
  types:
    GTS_SAKES type C length 000001 .
  types:
    /SPE/DE_LIFEX_TYPE type C length 000001 .
  types:
    /SPE/TTYPE type C length 000010 .
  types:
    /SPE/PRO_NUMBER type C length 000035 .
  types:
    LOC_GUID16 type X length 000016 .
  types:
    /SPE/DE_BILLING_IND type C length 000001 .
  types:
    DRUCK_PROFIL_ID type C length 000010 .
  types:
    MSR_ACTIVE type C length 000001 .
  types:
    PRTNR type N length 000010 .
  types:
    SHP_STGE_LOC_CHANGE type C length 000001 .
  types:
    TM_CTRL_KEY type C length 000004 .
  types:
    DLV_SPLIT_INITIATOR type C length 000001 .
  types:
    DLV_VERSION type N length 000004 .
  types:
    VORPA type C length 000010 .
  types:
    VORNU type C length 000025 .
  types:
    EXPVZ type C length 000001 .
  types:
    /ECRS/PORTI type C length 000004 .
  types:
    OID_EXTBOL type C length 000016 .
  types:
    OID_MISCDL type C length 000016 .
  types:
    begin of LIKP,
      MANDT type MANDT,
      VBELN type VBELN_VL,
      ERNAM type ERNAM,
      ERZET type ERZET,
      ERDAT type DATS,
      BZIRK type BZIRK,
      VSTEL type VSTEL,
      VKORG type VKORG,
      LFART type LFART,
      AUTLF type AUTLF,
      KZAZU type KZAZU_D,
      WADAT type DATS,
      LDDAT type DATS,
      TDDAT type DATS,
      LFDAT type DATS,
      KODAT type DATS,
      ABLAD type ABLAD,
      INCO1 type INCO1,
      INCO2 type INCO2,
      EXPKZ type EXPKZ,
      ROUTE type ROUTE,
      FAKSK type FAKSK,
      LIFSK type LIFSK,
      VBTYP type VBTYPL,
      KNFAK type KNFAK,
      TPQUA type TPQUA,
      TPGRP type TPGRP,
      LPRIO type LPRIO,
      VSBED type VSBED,
      KUNNR type KUNWE,
      KUNAG type KUNAG,
      KDGRP type KDGRP,
      STZKL type STZKL,
      STZZU type STZZU,
      BTGEW type GSGEW,
      NTGEW type NTGEW_15,
      GEWEI type GEWEI,
      VOLUM type VOLUM_15,
      VOLEH type VOLEH,
      ANZPK type ANZPK,
      BEROT type BEROT,
      LFUHR type LFUHR,
      GRULG type GRULG,
      LSTEL type LSTEL,
      TRAGR type TRAGR,
      FKARV type FKARV,
      FKDAT type DATS,
      PERFK type PERFK,
      ROUTA type ROUTE,
      STAFO type STAFO,
      KALSM type KALSM_D,
      KNUMV type KNUMV,
      WAERK type WAERK,
      VKBUR type VKBUR,
      VBEAK type VBEAK,
      ZUKRL type DZUKRL,
      VERUR type VERUR_VL,
      COMMN type COMMN,
      STWAE type STWAE,
      STCUR type STCUR,
      EXNUM type EXNUM,
      AENAM type AENAM,
      AEDAT type DATS,
      LGNUM type LGNUM,
      LISPL type LNSPL_LIKP,
      VKOIV type VKOIV,
      VTWIV type VTWIV,
      SPAIV type SPAIV,
      FKAIV type FKAIV,
      PIOIV type PIOIV,
      FKDIV type DATS,
      KUNIV type KUNIV,
      KKBER type KKBER,
      KNKLI type KNKLI,
      GRUPP type GRUPP_CM,
      SBGRP type SBGRP_CM,
      CTLPC type CTLPC_CM,
      CMWAE type WAERS_CM,
      AMTBL type AMTBL_CM,
      BOLNR type BOLNR,
      LIFNR type ELIFN,
      TRATY type TRATY,
      TRAID type TRAID,
      CMFRE type DATS,
      CMNGV type DATS,
      XABLN type XABLN,
      BLDAT type DATS,
      WADAT_IST type DATS,
      TRSPG type TRSPG,
      TPSID type TPSID,
      LIFEX type LIFEX,
      TERNR type AUFNR,
      KALSM_CH type KALSMA_CH,
      KLIEF type KLIEF,
      KALSP type KALSP,
      KNUMP type KNUMP,
      NETWR type NETWR_AK,
      AULWE type AULWE,
      WERKS type EMPFW,
      LCNUM type LCNUM,
      ABSSC type ABSSCHE_CM,
      KOUHR type KOUHR,
      TDUHR type TDUHR,
      LDUHR type LDUHR,
      WAUHR type WAUHR,
      LGTOR type LGTOR,
      LGBZO type LGBZO,
      AKWAE type AKWAE,
      AKKUR type AKKUR,
      AKPRZ type AKPRZ,
      PROLI type ADGE_PROLI,
      XBLNR type XBLNR_LIKP,
      HANDLE type TSEGGUID_LIKP,
      TSEGFL type TSEGEXISTS,
      TSEGTP type TSEGTPLLIK,
      TZONIS type TSEGZONISS,
      TZONRC type TSEGZONREC,
      CONT_DG type ADGE_NCDG,
      VERURSYS type VERURSYS,
      KZWAB type KZWAB,
      TCODE type TCODE,
      VSART type VSARTTR,
      TRMTYP type TRMTYP,
      SDABW type SDABW,
      VBUND type VBUND,
      XWOFF type XWOFF,
      DIRTA type LVS_DIRTA,
      PRVBE type PRVBE,
      FOLAR type LFART,
      PODAT type DATS,
      POTIM type POTIM,
      VGANZ type INT4,
      IMWRK type IMWRK,
      SPE_LOEKZ type LOEKZ_BK,
      SPE_LOC_SEQ type /SPE/RET_LOC_SEQ_D,
      SPE_ACC_APP_STS type /SPE/RET_ACC_APP_STS,
      SPE_SHP_INF_STS type /SPE/RET_SHP_INF_STS,
      SPE_RET_CANC type /SPE/RET_CANC,
      SPE_WAUHR_IST type WAUHR,
      SPE_WAZONE_IST type TZNZONE,
      SPE_REV_VLSTK type VLSTK,
      SPE_LE_SCENARIO type /SPE/LE_SCENARIO,
      SPE_ORIG_SYS type /SPE/INB_ORIGIN_SYS,
      SPE_CHNG_SYS type /SPE/INB_CHNG_SYS,
      SPE_GEOROUTE type /SPE/DE_ROUTE_ID,
      SPE_GEOROUTEIND type /SPE/DE_ROUTE_IND,
      SPE_CARRIER_IND type /SPE/DE_CARRIER_IND,
      SPE_GTS_REL type /SPE/DE_LEG_GTS_CODE,
      SPE_GTS_RT_CDE type /SPE/DE_ROUTE_GTS_CODE,
      SPE_REL_TMSTMP type /SPE/DE_RELEASE_TMSTMP,
      SPE_UNIT_SYSTEM type /SPE/DE_UNIT_SYSTEM,
      SPE_INV_BFR_GI type /SPE/INV_BFR_GI,
      SPE_QI_STATUS type /SPE/RET_QI_STATUS,
      SPE_RED_IND type /SPE/RED_IND,
      SAKES type GTS_SAKES,
      SPE_LIFEX_TYPE type /SPE/DE_LIFEX_TYPE,
      SPE_TTYPE type /SPE/TTYPE,
      SPE_PRO_NUMBER type /SPE/PRO_NUMBER,
      LOC_GUID type LOC_GUID16,
      SPE_BILLING_IND type /SPE/DE_BILLING_IND,
      PRINTER_PROFILE type DRUCK_PROFIL_ID,
      MSR_ACTIVE type MSR_ACTIVE,
      PRTNR type PRTNR,
      STGE_LOC_CHANGE type SHP_STGE_LOC_CHANGE,
      TM_CTRL_KEY type TM_CTRL_KEY,
      DLV_SPLIT_INITIA type DLV_SPLIT_INITIATOR,
      DLV_VERSION type DLV_VERSION,
      _DATAAGING type DATS,
      GTS_VORPA type VORPA,
      GTS_VORNU type VORNU,
      GTS_EXPVZ type EXPVZ,
      GTS_PORTI type /ECRS/PORTI.
    include type HANDOVER_LOCATION_PROCESS_STY.
    include type LIKP_STATUS.
    include type INCO_L.
    types:
      OID_EXTBOL type OID_EXTBOL,
      OID_MISCDL type OID_MISCDL.
    include type /BEV1/LULIKP_A.
    include type /BEV1/RPLIKP_A.
    include type BORRS_IDT.
    include type DIMP_BOR_LIKP.
    include type DIMP_PK_LIKP.
    include type FSH_LIKPDATA_DATA.
    types:
    end of LIKP .
  types:
    __LIKP                         type standard table of LIKP                           with non-unique default key .
  types:
    begin of BAPIRET1,
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
    end of BAPIRET1 .
  types:
    __BAPIRET1                     type standard table of BAPIRET1                       with non-unique default key .
  types:
    BAPINETWR type P length 12  decimals 000004 .
  types:
    BAPITAX type P length 12  decimals 000004 .
  types:
    BAPIGRVAL type P length 12  decimals 000004 .
  types:
    begin of BAPIVBRKSUCCESS_APPEND,
      NET_VALUE_ITEM type BAPINETWR,
      TAX_VALUE_ITEM type BAPITAX,
      GRO_VALUE_ITEM type BAPIGRVAL,
    end of BAPIVBRKSUCCESS_APPEND .
  types:
    BILL_DOC type C length 000010 .
  types:
    BILL_DOC_ITEM type N length 000006 .
  types:
    WAERS type C length 000005 .
  types:
    WAERS_ISO type C length 000003 .
  types:
    begin of BAPIVBRKSUCCESS,
      REF_DOC type VGBEL,
      REF_DOC_ITEM type VGPOS,
      BILL_DOC type BILL_DOC,
      BILL_DOC_ITEM type BILL_DOC_ITEM,
      NET_VALUE type BAPINETWR,
      TAX_VALUE type BAPITAX,
      CURRENCY type WAERS,
      CURRENCY_ISO type WAERS_ISO.
    include type BAPIVBRKSUCCESS_APPEND.
    types:
    end of BAPIVBRKSUCCESS .
  types:
    __BAPIVBRKSUCCESS              type standard table of BAPIVBRKSUCCESS                with non-unique default key .
endinterface.
