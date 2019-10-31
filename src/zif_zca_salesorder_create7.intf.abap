interface ZIF_ZCA_SALESORDER_CREATE7
  public .


  types:
    BAPI_MSG type C length 000220 .
  types:
    VBELN_VA type C length 000010 .
  types:
    POSNR type N length 000006 .
  types:
    MATNR18 type C length 000018 .
  types:
    WERKS_D type C length 000004 .
  types:
    LGORT_D type C length 000004 .
  types:
    WMENG type P length 7  decimals 000003 .
  types:
    begin of ZCA_IN_SALESORDER_WA,
      VBELN type VBELN_VA,
      ITM_NUMBER type POSNR,
      MATERIAL type MATNR18,
      PLANT type WERKS_D,
      STORE_LOC type LGORT_D,
      REQ_QTY type WMENG,
    end of ZCA_IN_SALESORDER_WA .
  types:
    ZCA_IN_SALESORDER_TT           type standard table of ZCA_IN_SALESORDER_WA           with non-unique default key .
  types:
    KUNNR type C length 000010 .
  types:
    POSNR_VA type N length 000006 .
  types:
    UEPOS type N length 000006 .
  types:
    POSEX type C length 000006 .
  types:
    GRPOS type N length 000006 .
  types:
    MATNR_KU1 type C length 000022 .
  types:
    CHARG_D type C length 000010 .
  types:
    GRKOR type N length 000003 .
  types:
    KZTLF type C length 000001 .
  types:
    ABGRU type C length 000002 .
  types:
    FAKSP type C length 000002 .
  types:
    DZMENG type P length 7  decimals 000003 .
  types:
    DZIEME type C length 000003 .
  types:
    ISO_ZIEME type C length 000003 .
  types:
    PSTYV type C length 000004 .
  types:
    ARKTX type C length 000040 .
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
    PRODH_D type C length 000018 .
  types:
    MATKL type C length 000009 .
  types:
    BSTKD type C length 000035 .
  types:
    BSARK type C length 000004 .
  types:
    IHREZ type C length 000012 .
  types:
    BSTKD_E type C length 000035 .
  types:
    BSARK_E type C length 000004 .
  types:
    IHREZ_E type C length 000012 .
  types:
    POSEX_E type C length 000006 .
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
    KURRF_P type P length 5  decimals 000005 .
  types:
    VALTG type N length 000002 .
  types:
    DZTERM type C length 000004 .
  types:
    DZLSCH type C length 000001 .
  types:
    KTGRD type C length 000002 .
  types:
    KURSK_P type P length 5  decimals 000005 .
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
    ABTNR type C length 000004 .
  types:
    EMPST type C length 000025 .
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
    DELCO type C length 000003 .
  types:
    VRKME type C length 000003 .
  types:
    ISOCD_UNIT type C length 000003 .
  types:
    UMZIZ type P length 3  decimals 000000 .
  types:
    UMZIN type P length 3  decimals 000000 .
  types:
    ABLFZ type P length 7  decimals 000003 .
  types:
    ABSFZ type P length 7  decimals 000003 .
  types:
    KBVER type P length 2  decimals 000000 .
  types:
    KEVER type P length 2  decimals 000000 .
  types:
    VKAUS type C length 000003 .
  types:
    FMENG type C length 000001 .
  types:
    UEBTK type C length 000001 .
  types:
    UEBTO type P length 2  decimals 000001 .
  types:
    UNTTO type P length 2  decimals 000001 .
  types:
    SPART type C length 000002 .
  types:
    UMVKZ type P length 3  decimals 000000 .
  types:
    UMVKN type P length 3  decimals 000000 .
  types:
    BRGEW_AP type P length 8  decimals 000003 .
  types:
    NTGEW_AP type P length 8  decimals 000003 .
  types:
    GEWEI type C length 000003 .
  types:
    GEWEI_ISO type C length 000003 .
  types:
    VOLUM_AP type P length 8  decimals 000003 .
  types:
    VOLEH type C length 000003 .
  types:
    VOLEH_ISO type C length 000003 .
  types:
    LPRIO type N length 000002 .
  types:
    VSTEL type C length 000004 .
  types:
    ROUTE type C length 000006 .
  types:
    ERNAM type C length 000012 .
  types:
    TAXMT type C length 000001 .
  types:
    KONDM type C length 000002 .
  types:
    BWTAR_D type C length 000010 .
  types:
    FIXMG type C length 000001 .
  types:
    SERNR type C length 000008 .
  types:
    ABGR_SCHL type C length 000006 .
  types:
    BEDAE type C length 000004 .
  types:
    NACHL type C length 000001 .
  types:
    EXART type C length 000002 .
  types:
    AUFZSCHL type C length 000006 .
  types:
    AUFKALSM type C length 000006 .
  types:
    MFRGR type C length 000008 .
  types:
    PLAVO type C length 000004 .
  types:
    KANNR type C length 000035 .
  types:
    FAKTF type C length 000002 .
  types:
    AD01PROFNR type C length 000008 .
  types:
    RR_RELTYP type C length 000001 .
  types:
    RR_ACDATV type C length 000001 .
  types:
    PMATN18 type C length 000018 .
  types:
    SWO_OBJTYP type C length 000010 .
  types:
    SWO_TYPEID type C length 000070 .
  types:
    LOGSYS type C length 000010 .
  types:
    AWAHR type N length 000003 .
  types:
    ANTLF type P length 1  decimals 000000 .
  types:
    J_1BCFOP_OLD type C length 000005 .
  types:
    J_1BTAXLW1 type C length 000003 .
  types:
    J_1BTAXLW2 type C length 000003 .
  types:
    J_1BTXSDC_ type C length 000002 .
  types:
    W_SORTK type C length 000018 .
  types:
    KMPMG type P length 7  decimals 000003 .
  types:
    BAPICUREXT type P length 15  decimals 000009 .
  types:
    WAERK type C length 000005 .
  types:
    WAERS_ISO type C length 000003 .
  types:
    PRCTR type C length 000010 .
  types:
    AUFNR type C length 000012 .
  types:
    PS_POSID type C length 000024 .
  types:
    AKPRZ type P length 3  decimals 000002 .
  types:
    VGBEL type C length 000010 .
  types:
    VGPOS type N length 000006 .
  types:
    VBTYP_V type C length 000001 .
  types:
    KDMAT type C length 000035 .
  types:
    KURRF_V type P length 5  decimals 000005 .
  types:
    KURSK_V type P length 5  decimals 000005 .
  types:
    POSGUID type C length 000022 .
  types:
    WKTNR type C length 000010 .
  types:
    WKTPS type N length 000006 .
  types:
    CUXCFG_ID type C length 000006 .
  types:
    CU_INST_ID type C length 000008 .
  types:
    MGV_MATERIAL_EXTERNAL type C length 000040 .
  types:
    MGV_MATERIAL_GUID type C length 000032 .
  types:
    MGV_MATERIAL_VERSION type C length 000010 .
  types:
    MGV_PR_REF_MAT_EXTERNAL type C length 000040 .
  types:
    MGV_PR_REF_MAT_GUID type C length 000032 .
  types:
    MGV_PR_REF_MAT_VERSION type C length 000010 .
  types:
    FKBER_SHORT type C length 000004 .
  types:
    STLAL type C length 000002 .
  types:
    CHAR12 type C length 000012 .
  types:
    EAN11 type C length 000018 .
  types:
    WMINR type C length 000010 .
  types:
    VSARTTR type C length 000002 .
  types:
    SDABW type C length 000004 .
  types:
    FKBER type C length 000016 .
  types:
    CRM_FKREL type C length 000001 .
  types:
    UEPVW type C length 000001 .
  types:
    CGPL_GUID16_R3 type X length 000016 .
  types:
    ABRVW type C length 000003 .
  types:
    J_1BCFOP_LONG type C length 000010 .
  types:
    VBX_SEL_ID type C length 000032 .
  types:
    MATWA18 type C length 000018 .
  types:
    VWPOS type C length 000004 .
  types:
    J_1BTAXLW3 type C length 000003 .
  types:
    MGV_MAT_ENTRD_EXTERNAL type C length 000040 .
  types:
    MGV_MAT_ENTRD_GUID type C length 000032 .
  types:
    MGV_MAT_ENTRD_VERSION type C length 000010 .
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
    BEMOT type C length 000002 .
  types:
    CMP_COMPREAS_COPY type C length 000004 .
  types:
    BP_GEBER type C length 000010 .
  types:
    FISTL type C length 000016 .
  types:
    FM_FIPEX type C length 000024 .
  types:
    GM_GRANT_NBR type C length 000020 .
  types:
    FM_BUDGET_PERIOD type C length 000010 .
  types:
    J_1BTAXLW4 type C length 000003 .
  types:
    J_1BTAXLW5 type C length 000003 .
  types:
    PSM_TAS type C length 000030 .
  types:
    PSM_BETC type C length 000010 .
  types:
    PSM_MOD_ALLOW type C length 000001 .
  types:
    PSM_CANC_ALLOW type C length 000001 .
  types:
    DZWELS type C length 000010 .
  types:
    PSM_BPN type C length 000006 .
  types:
    PSM_REP_FREQ type C length 000003 .
  types:
    SEPA_MNDID type C length 000035 .
  types:
    SGT_RCAT type C length 000016 .
  types:
    FMFG_CORE_TP_SUBLEVL type C length 000002 .
  types:
    FMFG_CORE_TP_AGENCID type C length 000003 .
  types:
    FMFG_CORE_TP_ALTRAID type C length 000003 .
  types:
    FMFG_CORE_TP_BEGPER type N length 000004 .
  types:
    FMFG_CORE_TP_ENDPER type N length 000004 .
  types:
    FMFG_CORE_TP_AVTYPE type C length 000001 .
  types:
    FMFG_CORE_TP_MAIN_ACCT type C length 000004 .
  types:
    FMFG_CORE_TP_SUB_ACCT type C length 000003 .
  types:
    FMFG_CORE_TP_BETC type C length 000010 .
  types:
    REVACC_REFID type C length 000030 .
  types:
    REVACC_REFTYPE type C length 000003 .
  types:
    VBTYPL type C length 000004 .
  types:
    INCOV type C length 000004 .
  types:
    INCO2_L type C length 000070 .
  types:
    INCO3_L type C length 000070 .
  types:
    MATNR40 type C length 000040 .
  types:
    PMATN40 type C length 000040 .
  types:
    MATWA40 type C length 000040 .
  types:
    BSTMG type P length 7  decimals 000003 .
  types:
    BSTME type C length 000003 .
  types:
    begin of BAPISDITM,
      ITM_NUMBER type POSNR_VA,
      HG_LV_ITEM type UEPOS,
      PO_ITM_NO type POSEX,
      MATERIAL type MATNR18,
      ALT_TO_ITM type GRPOS,
      CUST_MAT22 type MATNR_KU1,
      BATCH type CHARG_D,
      DLV_GROUP type GRKOR,
      PART_DLV type KZTLF,
      REASON_REJ type ABGRU,
      BILL_BLOCK type FAKSP,
      BILL_DATE type DATS,
      PLANT type WERKS_D,
      STORE_LOC type LGORT_D,
      TARGET_QTY type DZMENG,
      TARGET_QU type DZIEME,
      T_UNIT_ISO type ISO_ZIEME,
      ITEM_CATEG type PSTYV,
      SHORT_TEXT type ARKTX,
      PRC_GROUP1 type MVGR1,
      PRC_GROUP2 type MVGR2,
      PRC_GROUP3 type MVGR3,
      PRC_GROUP4 type MVGR4,
      PRC_GROUP5 type MVGR5,
      PROD_HIERA type PRODH_D,
      MATL_GROUP type MATKL,
      PURCH_NO_C type BSTKD,
      PURCH_DATE type DATS,
      PO_METHOD type BSARK,
      REF_1 type IHREZ,
      PURCH_NO_S type BSTKD_E,
      PO_DAT_S type DATS,
      PO_METH_S type BSARK_E,
      REF_1_S type IHREZ_E,
      POITM_NO_S type POSEX_E,
      PRICE_GRP type KONDA,
      CUST_GROUP type KDGRP,
      SALES_DIST type BZIRK,
      PRICE_LIST type PLTYP,
      INCOTERMS1 type INCO1,
      INCOTERMS2 type INCO2,
      ORDCOMP_IN type KZAZU_D,
      BILL_SCHED type PERFK,
      INVO_SCHED type PERRL,
      MN_INVOICE type MRNKZ,
      EX_RATE_FI type KURRF_P,
      ADD_VAL_DY type VALTG,
      FIX_VAL_DY type DATS,
      PMNTTRMS type DZTERM,
      PYMT_METH type DZLSCH,
      ACCNT_ASGN type KTGRD,
      EXCHG_RATE type KURSK_P,
      PRICE_DATE type DATS,
      SERV_DATE type DATS,
      DUNN_KEY type MSCHL,
      DUNN_BLOCK type MANSP,
      PROMOTION type WAKTION,
      PMTGAR_PRO type ABSSCHE_CM,
      DOC_NUM_FI type LCNUM,
      DEPARTM_NO type ABTNR,
      REC_POINT type EMPST,
      CSTCNDGRP1 type KDKG1,
      CSTCNDGRP2 type KDKG2,
      CSTCNDGRP3 type KDKG3,
      CSTCNDGRP4 type KDKG4,
      CSTCNDGRP5 type KDKG5,
      DLV_TIME type DELCO,
      SALES_UNIT type VRKME,
      S_UNIT_ISO type ISOCD_UNIT,
      TRG_QTY_NO type UMZIZ,
      TRGQTY_DEN type UMZIN,
      RNDDLV_QTY type ABLFZ,
      MAXDEVAMNT type ABSFZ,
      MAXDEVPER type KBVER,
      MAXDEV_DAY type KEVER,
      USAGE_IND type VKAUS,
      FIXED_QUAN type FMENG,
      UNLMT_DLV type UEBTK,
      OVERDLVTOL type UEBTO,
      UNDDLV_TOL type UNTTO,
      DIVISION type SPART,
      SALQTYNUM type UMVKZ,
      SALQTYDEN type UMVKN,
      GROSS_WGHT type BRGEW_AP,
      NET_WEIGHT type NTGEW_AP,
      UNTOF_WGHT type GEWEI,
      UNOF_WTISO type GEWEI_ISO,
      VOLUME type VOLUM_AP,
      VOLUNIT type VOLEH,
      VOLUNITISO type VOLEH_ISO,
      DLV_PRIO type LPRIO,
      SHIP_POINT type VSTEL,
      ROUTE type ROUTE,
      CREATED_BY type ERNAM,
      TAX_CLASS1 type TAXMT,
      TAX_CLASS2 type TAXMT,
      TAX_CLASS3 type TAXMT,
      TAX_CLASS4 type TAXMT,
      TAX_CLASS5 type TAXMT,
      TAX_CLASS6 type TAXMT,
      TAX_CLASS7 type TAXMT,
      TAX_CLASS8 type TAXMT,
      TAX_CLASS9 type TAXMT,
      MAT_PR_GRP type KONDM,
      VAL_TYPE type BWTAR_D,
      FIXDAT_QTY type FIXMG,
      BOMEXPL_NO type SERNR,
      RESANALKEY type ABGR_SCHL,
      REQMTS_TYP type BEDAE,
      NO_GR_POST type NACHL,
      BUS_TRANST type EXART,
      OVERHD_KEY type AUFZSCHL,
      CSTG_SHEET type AUFKALSM,
      MATFRGTGRP type MFRGR,
      PLDLVSHDIN type PLAVO,
      SEQ_NO type KANNR,
      BIL_FORM type FAKTF,
      DLI_PROFIL type AD01PROFNR,
      REV_TYPE type RR_RELTYP,
      BEGDEM_PER type RR_ACDATV,
      PR_REF_MAT type PMATN18,
      REFOBJTYPE type SWO_OBJTYP,
      REFOBJKEY type SWO_TYPEID,
      REFLOGSYS type LOGSYS,
      ORDER_PROB type AWAHR,
      MAX_PL_DLV type ANTLF,
      CFOP_CODE type J_1BCFOP_OLD,
      TAXLAWICMS type J_1BTAXLW1,
      TAXLAWIPI type J_1BTAXLW2,
      SD_TAXCODE type J_1BTXSDC_,
      ASSORT_MOD type W_SORTK,
      COMP_QUANT type KMPMG,
      TARGET_VAL type BAPICUREXT,
      CURRENCY type WAERK,
      CURR_ISO type WAERS_ISO,
      PROFIT_CTR type PRCTR,
      ORDERID type AUFNR,
      WBS_ELEM type PS_POSID,
      DEPREC_PER type AKPRZ,
      REF_DOC type VGBEL,
      REF_DOC_IT type VGPOS,
      REF_DOC_CA type VBTYP_V,
      CUST_MAT35 type KDMAT,
      EXCH_RATE_FI_V type KURRF_V,
      EXCHG_RATE_V type KURSK_V,
      ITEMGUID_ATP type POSGUID,
      VAL_CONTR type WKTNR,
      VAL_CON_I type WKTPS,
      CONFIG_ID type CUXCFG_ID,
      INST_ID type CU_INST_ID,
      MAT_EXT type MGV_MATERIAL_EXTERNAL,
      MAT_GUID type MGV_MATERIAL_GUID,
      MAT_VERS type MGV_MATERIAL_VERSION,
      P_MAT_EXT type MGV_PR_REF_MAT_EXTERNAL,
      P_MAT_GUID type MGV_PR_REF_MAT_GUID,
      P_MAT_VERS type MGV_PR_REF_MAT_VERSION,
      FUNC_AREA type FKBER_SHORT,
      ALTERN_BOM type STLAL,
      FKK_CONACCT type CHAR12,
      EAN_UPC type EAN11,
      PRODCAT type WMINR,
      SHIP_TYPE type VSARTTR,
      S_PROC_IND type SDABW,
      FUNC_AREA_LONG type FKBER,
      BILL_REL type CRM_FKREL,
      VW_UEPOS type UEPVW,
      CAMPAIGN type CGPL_GUID16_R3,
      DLVSCHDUSE type ABRVW,
      CFOP_LONG type J_1BCFOP_LONG,
      SELECTION type VBX_SEL_ID,
      MAT_ENTRD type MATWA18,
      LOG_SYSTEM_OWN type LOGSYS,
      ITM_TYPE_USAGE type VWPOS,
      TAXLAWISS type J_1BTAXLW3,
      MAT_ENTRD_EXTERNAL type MGV_MAT_ENTRD_EXTERNAL,
      MAT_ENTRD_GUID type MGV_MAT_ENTRD_GUID,
      MAT_ENTRD_VERSION type MGV_MAT_ENTRD_VERSION,
      LOC_TAXCAT type J_1AFITP_D,
      LOC_ZEROVAT type J_1ARFZVAT,
      LOC_ACTCODE type J_1AGICD_D,
      LOC_DISTTYPE type J_1ADTYP_D,
      LOC_TXRELCLAS type J_1ATXREL_,
      CALC_MOTIVE type BEMOT,
      COMPREAS type CMP_COMPREAS_COPY,
      FUND type BP_GEBER,
      FUNDS_CTR type FISTL,
      CMMT_ITEM type FM_FIPEX,
      GRANT_NBR type GM_GRANT_NBR,
      BUDGET_PERIOD type FM_BUDGET_PERIOD,
      TAXLAWCOFINS type J_1BTAXLW4,
      TAXLAWPIS type J_1BTAXLW5,
      TREASURY_ACC_SYMBOL type PSM_TAS,
      BUSINESS_EVENT_TCODE type PSM_BETC,
      MODIFICATION_ALLOWED type PSM_MOD_ALLOW,
      CANCELLATION_ALLOWED type PSM_CANC_ALLOW,
      PAYMENT_METHODS type DZWELS,
      BUSINESS_PARTNER_NO type PSM_BPN,
      REPORTING_FREQ type PSM_REP_FREQ,
      SEPA_MANDATE_ID type SEPA_MNDID,
      REQ_SEGMENT type SGT_RCAT,
      TP_SUBLEVL type FMFG_CORE_TP_SUBLEVL,
      TP_AGENCID type FMFG_CORE_TP_AGENCID,
      TP_ALTRAID type FMFG_CORE_TP_ALTRAID,
      TP_BEGPER type FMFG_CORE_TP_BEGPER,
      TP_ENDPER type FMFG_CORE_TP_ENDPER,
      TP_AVTYPE type FMFG_CORE_TP_AVTYPE,
      TP_MAIN_ACCT type FMFG_CORE_TP_MAIN_ACCT,
      TP_SUB_ACCT type FMFG_CORE_TP_SUB_ACCT,
      TP_BETC type FMFG_CORE_TP_BETC,
      REVACC_REFID type REVACC_REFID,
      REVACC_REFTYPE type REVACC_REFTYPE,
      REF_DOC_CA_LONG type VBTYPL,
      INCOTERMSV type INCOV,
      INCOTERMS2L type INCO2_L,
      INCOTERMS3L type INCO3_L,
      MATERIAL_LONG type MATNR40,
      PR_REF_MAT_LONG type PMATN40,
      MAT_ENTRD_LONG type MATWA40,
      PO_QUAN type BSTMG,
      PO_UNIT type BSTME,
    end of BAPISDITM .
  types:
    __BAPISDITM                    type standard table of BAPISDITM                      with non-unique default key .
  types:
    SWC_OBJEDE type C length 000032 .
  types:
    VBELN type C length 000010 .
  types:
    ETENR type N length 000004 .
  types:
    KNUMV type C length 000010 .
  types:
    KPOSN type N length 000006 .
  types:
    STUNR type N length 000003 .
  types:
    DZAEHK_SHORT type N length 000002 .
  types:
    KSCHA type C length 000004 .
  types:
    CHAR1 type C length 000001 .
  types:
    NUM06 type N length 000006 .
  types:
    ADRNR type C length 000010 .
  types:
    ABRLI type N length 000004 .
  types:
    ABART type C length 000001 .
  types:
    DZAEHK type N length 000003 .
  types:
    begin of BAPISDKEY,
      REFOBJTYP type SWO_OBJTYP,
      REFOBJECT type SWC_OBJEDE,
      REFOBJKEY type SWO_TYPEID,
      REFLOGSYS type LOGSYS,
      DOC_NUMBER type VBELN,
      ITM_NUMBER type POSNR_VA,
      SCHED_LIN type ETENR,
      COND_NO type KNUMV,
      CONDITEMNO type KPOSN,
      COND_ST_NO type STUNR,
      COND_COUNT type DZAEHK_SHORT,
      COND_TYPE type KSCHA,
      STATUS type CHAR1,
      TINDEX type NUM06,
      ADDRESS type ADRNR,
      ABRLI type ABRLI,
      ABART type ABART,
      COND_COUNT_LONG type DZAEHK,
    end of BAPISDKEY .
  types:
    __BAPISDKEY                    type standard table of BAPISDKEY                      with non-unique default key .
  types:
    PARVW type C length 000002 .
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
    LAND1 type C length 000003 .
  types:
    LAND1_ISO type C length 000002 .
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
    ABLAD type C length 000025 .
  types:
    LZONE type C length 000010 .
  types:
    TXJCD type C length 000015 .
  types:
    ADRNP type C length 000010 .
  types:
    AD_ADRTYPE type C length 000001 .
  types:
    ADDR_ORIGIN type C length 000001 .
  types:
    ADDR_LINK type C length 000010 .
  types:
    begin of BAPIPARNR,
      PARTN_ROLE type PARVW,
      PARTN_NUMB type KUNNR,
      ITM_NUMBER type POSNR,
      TITLE type ANRED_VP,
      NAME type NAME1_GP,
      NAME_2 type NAME2_GP,
      NAME_3 type NAME3_GP,
      NAME_4 type NAME4_GP,
      STREET type STRAS_GP,
      COUNTRY type LAND1,
      COUNTR_ISO type LAND1_ISO,
      POSTL_CODE type PSTLZ,
      POBX_PCD type PSTL2,
      POBX_CTY type PFORT_GP,
      CITY type ORT01_GP,
      DISTRICT type ORT02_GP,
      REGION type REGIO,
      PO_BOX type PFACH,
      TELEPHONE type TELF1,
      TELEPHONE2 type TELF2,
      TELEBOX type TELBX,
      FAX_NUMBER type TELFX,
      TELETEX_NO type TELTX,
      TELEX_NO type TELX1,
      LANGU type SPRAS,
      LANGU_ISO type LAISO,
      UNLOAD_PT type ABLAD,
      TRANSPZONE type LZONE,
      TAXJURCODE type TXJCD,
      ADDRESS type ADRNR,
      PRIV_ADDR type ADRNP,
      ADDR_TYPE type AD_ADRTYPE,
      ADDR_ORIG type ADDR_ORIGIN,
      ADDR_LINK type ADDR_LINK,
      REFOBJTYPE type SWO_OBJTYP,
      REFOBJKEY type SWO_TYPEID,
      REFLOGSYS type LOGSYS,
    end of BAPIPARNR .
  types:
    __BAPIPARNR                    type standard table of BAPIPARNR                      with non-unique default key .
  types:
    PRGRS type C length 000001 .
  types EZEIT_VBEP type T .
  types:
    LIFSP_EP type C length 000002 .
  types:
    ETTYP type C length 000002 .
  types TDUHR type T .
  types MBUHR type T .
  types LDUHR type T .
  types WAUHR type T .
  types:
    EDI_ETTYP type C length 000001 .
  types:
    begin of BAPISCHDL,
      ITM_NUMBER type POSNR_VA,
      SCHED_LINE type ETENR,
      REQ_DATE type DATS,
      DATE_TYPE type PRGRS,
      REQ_TIME type EZEIT_VBEP,
      REQ_QTY type WMENG,
      REQ_DLV_BL type LIFSP_EP,
      SCHED_TYPE type ETTYP,
      TP_DATE type DATS,
      MS_DATE type DATS,
      LOAD_DATE type DATS,
      GI_DATE type DATS,
      TP_TIME type TDUHR,
      MS_TIME type MBUHR,
      LOAD_TIME type LDUHR,
      GI_TIME type WAUHR,
      REFOBJTYPE type SWO_OBJTYP,
      REFOBJKEY type SWO_TYPEID,
      REFLOGSYS type LOGSYS,
      DLV_DATE type DATS,
      DLV_TIME type EZEIT_VBEP,
      REL_TYPE type ABART,
      PLAN_SCHED_TYPE type EDI_ETTYP,
    end of BAPISCHDL .
  types:
    __BAPISCHDL                    type standard table of BAPISCHDL                      with non-unique default key .
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
  types EDATU_VBAK type DATS .
endinterface.
