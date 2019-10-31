interface ZIF_ZCA_SALESORDER_CHANGE
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
      SD_DOC type VBELN_VA,
      ITM_NUMBER type POSNR,
      MATERIAL type MATNR18,
      PLANT type WERKS_D,
      STORE_LOC type LGORT_D,
      REQ_QTY type WMENG,
    end of ZCA_IN_SALESORDER_WA .
  types:
    ZCA_IN_SALESORDER_TT           type standard table of ZCA_IN_SALESORDER_WA           with non-unique default key .
  types:
    LIFSK type C length 000002 .
  types:
    SUBMI type C length 000010 .
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
    PRGRS_VBAK type C length 000001 .
  types:
    BSTKD type C length 000035 .
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
    DZTERM type C length 000004 .
  types:
    FAKSK type C length 000002 .
  types:
    AUGRU type C length 000003 .
  types:
    AUTLF type C length 000001 .
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
    BSTKD_E type C length 000035 .
  types:
    BSARK_E type C length 000004 .
  types:
    IHREZ_E type C length 000012 .
  types:
    VBTYP type C length 000001 .
  types:
    VSBED type C length 000002 .
  types:
    KTEXT_V type C length 000040 .
  types:
    MAHZA type P length 2  decimals 000000 .
  types:
    KOSTL type C length 000010 .
  types:
    PS_POSID type C length 000024 .
  types:
    ABRVW type C length 000003 .
  types:
    ABDIS type C length 000001 .
  types:
    VGBEL type C length 000010 .
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
    KZAZU_D type C length 000001 .
  types:
    PERFK type C length 000002 .
  types:
    PERRL type C length 000002 .
  types:
    MRNKZ type C length 000001 .
  types:
    KURRF type P length 5  decimals 000005 .
  types:
    VALTG type N length 000002 .
  types:
    DZLSCH type C length 000001 .
  types:
    KTGRD type C length 000002 .
  types:
    KURSK type P length 5  decimals 000005 .
  types:
    MSCHL type C length 000001 .
  types:
    MANSP type C length 000001 .
  types:
    WAKTION type C length 000010 .
  types:
    ABSSCHE_CM type C length 000006 .
  types:
    ABTNR type C length 000004 .
  types:
    EMPST type C length 000025 .
  types:
    POSEX_E type C length 000006 .
  types:
    LCNUM type C length 000010 .
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
    WAERK type C length 000005 .
  types:
    WAERS_ISO type C length 000003 .
  types:
    CHAR012 type C length 000012 .
  types:
    CGPL_GUID16_R3 type X length 000016 .
  types:
    VBKLA type C length 000009 .
  types:
    WAERS type C length 000005 .
  types:
    ISOCD type C length 000003 .
  types:
    VSARTTR type C length 000002 .
  types:
    SDABW type C length 000004 .
  types:
    XBLNR_V_LONG type C length 000035 .
  types:
    VSNMR_V type C length 000012 .
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
    INCOV type C length 000004 .
  types:
    INCO2_L type C length 000070 .
  types:
    INCO3_L type C length 000070 .
  types:
    VBTYPL type C length 000004 .
  types:
    VBTYPL_V type C length 000004 .
  types:
    begin of BAPISDH1,
      COLLECT_NO type SUBMI,
      SALES_ORG type VKORG,
      DISTR_CHAN type VTWEG,
      DIVISION type SPART,
      SALES_GRP type VKGRP,
      SALES_OFF type VKBUR,
      REQ_DATE_H type DATS,
      DATE_TYPE type PRGRS_VBAK,
      PURCH_NO_C type BSTKD,
      PURCH_DATE type DATS,
      PO_METHOD type BSARK,
      PO_SUPPLEM type BSTZD,
      REF_1 type IHREZ,
      NAME type BNAME_V,
      TELEPHONE type TELF1_VP,
      PRICE_GRP type KONDA,
      CUST_GROUP type KDGRP,
      SALES_DIST type BZIRK,
      PRICE_LIST type PLTYP,
      INCOTERMS1 type INCO1,
      INCOTERMS2 type INCO2,
      PMNTTRMS type DZTERM,
      DLV_BLOCK type LIFSK,
      BILL_BLOCK type FAKSK,
      ORD_REASON type AUGRU,
      COMPL_DLV type AUTLF,
      PRICE_DATE type DATS,
      QT_VALID_F type DATS,
      QT_VALID_T type DATS,
      CT_VALID_F type DATS,
      CT_VALID_T type DATS,
      CUST_GRP1 type KVGR1,
      CUST_GRP2 type KVGR2,
      CUST_GRP3 type KVGR3,
      CUST_GRP4 type KVGR4,
      CUST_GRP5 type KVGR5,
      PURCH_NO_S type BSTKD_E,
      PO_DAT_S type DATS,
      PO_METH_S type BSARK_E,
      REF_1_S type IHREZ_E,
      SD_DOC_CAT type VBTYP,
      DOC_DATE type DATS,
      WAR_DATE type DATS,
      SHIP_COND type VSBED,
      PP_SEARCH type KTEXT_V,
      DUN_COUNT type MAHZA,
      DUN_DATE type DATS,
      COSTCENTER type KOSTL,
      WBS_ELEM type PS_POSID,
      DLVSCHDUSE type ABRVW,
      PLDLVSTYP type ABDIS,
      REF_DOC type VGBEL,
      COMP_CDE_B type BUKRS_VF,
      ALTTAX_CLS type TAXK1_AK,
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
      REFDOC_CAT type VBTYP,
      ORDCOMB_IN type KZAZU_D,
      BILL_SCHED type PERFK,
      INVO_SCHED type PERRL,
      MN_INVOICE type MRNKZ,
      EXRATE_FI type KURRF,
      ADD_VAL_DY type VALTG,
      FIX_VAL_DY type DATS,
      PYMT_METH type DZLSCH,
      ACCNT_ASGN type KTGRD,
      EXCHG_RATE type KURSK,
      BILL_DATE type DATS,
      SERV_DATE type DATS,
      DUNN_KEY type MSCHL,
      DUNN_BLOCK type MANSP,
      PROMOTION type WAKTION,
      PMTGAR_PRO type ABSSCHE_CM,
      DEPARTM_NO type ABTNR,
      REC_POINT type EMPST,
      POITM_NO_S type POSEX_E,
      DOC_NUM_FI type LCNUM,
      CSTCNDGRP1 type KDKG1,
      CSTCNDGRP2 type KDKG2,
      CSTCNDGRP3 type KDKG3,
      CSTCNDGRP4 type KDKG4,
      CSTCNDGRP5 type KDKG5,
      DLV_TIME type DELCO,
      CURRENCY type WAERK,
      CURR_ISO type WAERS_ISO,
      FKK_CONACCT type CHAR012,
      CAMPAIGN type CGPL_GUID16_R3,
      DOC_CLASS type VBKLA,
      H_CURR type WAERS,
      H_CURR_ISO type ISOCD,
      SHIP_TYPE type VSARTTR,
      S_PROC_IND type SDABW,
      REF_DOC_L_LONG type XBLNR_V_LONG,
      VERSION type VSNMR_V,
      PSM_PSTNG_DATE type DATS,
      TREASURY_ACC_SYMBOL type PSM_TAS,
      BUSINESS_EVENT_TCODE type PSM_BETC,
      MODIFICATION_ALLOWED type PSM_MOD_ALLOW,
      CANCELLATION_ALLOWED type PSM_CANC_ALLOW,
      PAYMENT_METHODS type DZWELS,
      BUSINESS_PARTNER_NO type PSM_BPN,
      REPORTING_FREQ type PSM_REP_FREQ,
      SEPA_MANDATE_ID type SEPA_MNDID,
      INCOTERMSV type INCOV,
      INCOTERMS2L type INCO2_L,
      INCOTERMS3L type INCO3_L,
      SD_DOC_CAT_LONG type VBTYPL,
      REFDOC_CAT_LONG type VBTYPL_V,
    end of BAPISDH1 .
  types:
    UPDKZ_D type C length 000001 .
  types:
    BAPIUPDATE type C length 000001 .
  types:
    begin of BAPISDH1X,
      UPDATEFLAG type UPDKZ_D,
      COLLECT_NO type BAPIUPDATE,
      SALES_ORG type BAPIUPDATE,
      DISTR_CHAN type BAPIUPDATE,
      DIVISION type BAPIUPDATE,
      SALES_GRP type BAPIUPDATE,
      SALES_OFF type BAPIUPDATE,
      REQ_DATE_H type BAPIUPDATE,
      DATE_TYPE type BAPIUPDATE,
      PURCH_NO_C type BAPIUPDATE,
      PURCH_DATE type BAPIUPDATE,
      PO_METHOD type BAPIUPDATE,
      PO_SUPPLEM type BAPIUPDATE,
      REF_1 type BAPIUPDATE,
      NAME type BAPIUPDATE,
      TELEPHONE type BAPIUPDATE,
      PRICE_GRP type BAPIUPDATE,
      CUST_GROUP type BAPIUPDATE,
      SALES_DIST type BAPIUPDATE,
      PRICE_LIST type BAPIUPDATE,
      INCOTERMS1 type BAPIUPDATE,
      INCOTERMS2 type BAPIUPDATE,
      PMNTTRMS type BAPIUPDATE,
      DLV_BLOCK type BAPIUPDATE,
      BILL_BLOCK type BAPIUPDATE,
      ORD_REASON type BAPIUPDATE,
      COMPL_DLV type BAPIUPDATE,
      PRICE_DATE type BAPIUPDATE,
      QT_VALID_F type BAPIUPDATE,
      QT_VALID_T type BAPIUPDATE,
      CT_VALID_F type BAPIUPDATE,
      CT_VALID_T type BAPIUPDATE,
      CUST_GRP1 type BAPIUPDATE,
      CUST_GRP2 type BAPIUPDATE,
      CUST_GRP3 type BAPIUPDATE,
      CUST_GRP4 type BAPIUPDATE,
      CUST_GRP5 type BAPIUPDATE,
      PURCH_NO_S type BAPIUPDATE,
      PO_DAT_S type BAPIUPDATE,
      PO_METH_S type BAPIUPDATE,
      REF_1_S type BAPIUPDATE,
      SD_DOC_CAT type BAPIUPDATE,
      DOC_DATE type BAPIUPDATE,
      WAR_DATE type BAPIUPDATE,
      SHIP_COND type BAPIUPDATE,
      PP_SEARCH type BAPIUPDATE,
      DUN_COUNT type BAPIUPDATE,
      DUN_DATE type BAPIUPDATE,
      COSTCENTER type BAPIUPDATE,
      WBS_ELEM type BAPIUPDATE,
      DLVSCHDUSE type BAPIUPDATE,
      PLDLVSTYP type BAPIUPDATE,
      REF_DOC type BAPIUPDATE,
      COMP_CDE_B type BAPIUPDATE,
      ALTTAX_CLS type BAPIUPDATE,
      TAX_CLASS2 type BAPIUPDATE,
      TAX_CLASS3 type BAPIUPDATE,
      TAX_CLASS4 type BAPIUPDATE,
      TAX_CLASS5 type BAPIUPDATE,
      TAX_CLASS6 type BAPIUPDATE,
      TAX_CLASS7 type BAPIUPDATE,
      TAX_CLASS8 type BAPIUPDATE,
      TAX_CLASS9 type BAPIUPDATE,
      REF_DOC_L type BAPIUPDATE,
      ASS_NUMBER type BAPIUPDATE,
      REFDOC_CAT type BAPIUPDATE,
      ORDCOMB_IN type BAPIUPDATE,
      BILL_SCHED type BAPIUPDATE,
      INVO_SCHED type BAPIUPDATE,
      MN_INVOICE type BAPIUPDATE,
      EXRATE_FI type BAPIUPDATE,
      ADD_VAL_DY type BAPIUPDATE,
      FIX_VAL_DY type BAPIUPDATE,
      PYMT_METH type BAPIUPDATE,
      ACCNT_ASGN type BAPIUPDATE,
      EXCHG_RATE type BAPIUPDATE,
      BILL_DATE type BAPIUPDATE,
      SERV_DATE type BAPIUPDATE,
      DUNN_KEY type BAPIUPDATE,
      DUNN_BLOCK type BAPIUPDATE,
      PROMOTION type BAPIUPDATE,
      PMTGAR_PRO type BAPIUPDATE,
      DEPARTM_NO type BAPIUPDATE,
      REC_POINT type BAPIUPDATE,
      POITM_NO_S type BAPIUPDATE,
      DOC_NUM_FI type BAPIUPDATE,
      CSTCNDGRP1 type BAPIUPDATE,
      CSTCNDGRP2 type BAPIUPDATE,
      CSTCNDGRP3 type BAPIUPDATE,
      CSTCNDGRP4 type BAPIUPDATE,
      CSTCNDGRP5 type BAPIUPDATE,
      DLV_TIME type BAPIUPDATE,
      CURRENCY type BAPIUPDATE,
      FKK_CONACCT type BAPIUPDATE,
      CAMPAIGN type BAPIUPDATE,
      DOC_CLASS type BAPIUPDATE,
      H_CURR type BAPIUPDATE,
      SHIP_TYPE type BAPIUPDATE,
      S_PROC_IND type BAPIUPDATE,
      VERSION type BAPIUPDATE,
      PSM_PSTNG_DATE type BAPIUPDATE,
      TREASURY_ACC_SYMBOL type BAPIUPDATE,
      BUSINESS_EVENT_TCODE type BAPIUPDATE,
      MODIFICATION_ALLOWED type BAPIUPDATE,
      CANCELLATION_ALLOWED type BAPIUPDATE,
      PAYMENT_METHODS type BAPIUPDATE,
      BUSINESS_PARTNER_NO type BAPIUPDATE,
      REPORTING_FREQ type BAPIUPDATE,
      SEPA_MANDATE_ID type BAPIUPDATE,
      INCOTERMSV type BAPIUPDATE,
      INCOTERMS2L type BAPIUPDATE,
      INCOTERMS3L type BAPIUPDATE,
      SD_DOC_CAT_LONG type BAPIUPDATE,
      REFDOC_CAT_LONG type BAPIUPDATE,
    end of BAPISDH1X .
  types:
    ABGRU type C length 000002 .
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
    KURRF_P type P length 5  decimals 000005 .
  types:
    KURSK_P type P length 5  decimals 000005 .
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
    PRCTR type C length 000010 .
  types:
    AUFNR type C length 000012 .
  types:
    AKPRZ type P length 3  decimals 000002 .
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
    FKBER type C length 000016 .
  types:
    CRM_FKREL type C length 000001 .
  types:
    UEPVW type C length 000001 .
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
    begin of BAPISDITMX,
      ITM_NUMBER type POSNR_VA,
      UPDATEFLAG type UPDKZ_D,
      HG_LV_ITEM type BAPIUPDATE,
      PO_ITM_NO type BAPIUPDATE,
      MATERIAL type BAPIUPDATE,
      ALT_TO_ITM type BAPIUPDATE,
      CUST_MAT22 type BAPIUPDATE,
      BATCH type BAPIUPDATE,
      DLV_GROUP type BAPIUPDATE,
      PART_DLV type BAPIUPDATE,
      REASON_REJ type BAPIUPDATE,
      BILL_BLOCK type BAPIUPDATE,
      BILL_DATE type BAPIUPDATE,
      PLANT type BAPIUPDATE,
      STORE_LOC type BAPIUPDATE,
      TARGET_QTY type BAPIUPDATE,
      TARGET_QU type BAPIUPDATE,
      T_UNIT_ISO type BAPIUPDATE,
      ITEM_CATEG type BAPIUPDATE,
      SHORT_TEXT type BAPIUPDATE,
      PRC_GROUP1 type BAPIUPDATE,
      PRC_GROUP2 type BAPIUPDATE,
      PRC_GROUP3 type BAPIUPDATE,
      PRC_GROUP4 type BAPIUPDATE,
      PRC_GROUP5 type BAPIUPDATE,
      PROD_HIERA type BAPIUPDATE,
      MATL_GROUP type BAPIUPDATE,
      PURCH_NO_C type BAPIUPDATE,
      PURCH_DATE type BAPIUPDATE,
      PO_METHOD type BAPIUPDATE,
      REF_1 type BAPIUPDATE,
      PURCH_NO_S type BAPIUPDATE,
      PO_DAT_S type BAPIUPDATE,
      PO_METH_S type BAPIUPDATE,
      REF_1_S type BAPIUPDATE,
      POITM_NO_S type BAPIUPDATE,
      PRICE_GRP type BAPIUPDATE,
      CUST_GROUP type BAPIUPDATE,
      SALES_DIST type BAPIUPDATE,
      PRICE_LIST type BAPIUPDATE,
      INCOTERMS1 type BAPIUPDATE,
      INCOTERMS2 type BAPIUPDATE,
      ORDCOMP_IN type BAPIUPDATE,
      BILL_SCHED type BAPIUPDATE,
      INVO_SCHED type BAPIUPDATE,
      MN_INVOICE type BAPIUPDATE,
      EX_RATE_FI type BAPIUPDATE,
      ADD_VAL_DY type BAPIUPDATE,
      FIX_VAL_DY type BAPIUPDATE,
      PMNTTRMS type BAPIUPDATE,
      PYMT_METH type BAPIUPDATE,
      ACCNT_ASGN type BAPIUPDATE,
      EXCHG_RATE type BAPIUPDATE,
      PRICE_DATE type BAPIUPDATE,
      SERV_DATE type BAPIUPDATE,
      DUNN_KEY type BAPIUPDATE,
      DUNN_BLOCK type BAPIUPDATE,
      PROMOTION type BAPIUPDATE,
      PMTGAR_PRO type BAPIUPDATE,
      DOC_NUM_FI type BAPIUPDATE,
      DEPARTM_NO type BAPIUPDATE,
      REC_POINT type BAPIUPDATE,
      CSTCNDGRP1 type BAPIUPDATE,
      CSTCNDGRP2 type BAPIUPDATE,
      CSTCNDGRP3 type BAPIUPDATE,
      CSTCNDGRP4 type BAPIUPDATE,
      CSTCNDGRP5 type BAPIUPDATE,
      DLV_TIME type BAPIUPDATE,
      SALES_UNIT type BAPIUPDATE,
      TRG_QTY_NO type BAPIUPDATE,
      TRGQTY_DEN type BAPIUPDATE,
      RNDDLV_QTY type BAPIUPDATE,
      MAXDEVAMNT type BAPIUPDATE,
      MAXDEVPER type BAPIUPDATE,
      MAXDEV_DAY type BAPIUPDATE,
      USAGE_IND type BAPIUPDATE,
      FIXED_QUAN type BAPIUPDATE,
      UNLMT_DLV type BAPIUPDATE,
      OVERDLVTOL type BAPIUPDATE,
      UNDDLV_TOL type BAPIUPDATE,
      DIVISION type BAPIUPDATE,
      SALQTYNUM type BAPIUPDATE,
      SALQTYDEN type BAPIUPDATE,
      GROSS_WGHT type BAPIUPDATE,
      NET_WEIGHT type BAPIUPDATE,
      UNTOF_WGHT type BAPIUPDATE,
      VOLUME type BAPIUPDATE,
      VOLUNIT type BAPIUPDATE,
      DLV_PRIO type BAPIUPDATE,
      SHIP_POINT type BAPIUPDATE,
      ROUTE type BAPIUPDATE,
      TAX_CLASS1 type BAPIUPDATE,
      TAX_CLASS2 type BAPIUPDATE,
      TAX_CLASS3 type BAPIUPDATE,
      TAX_CLASS4 type BAPIUPDATE,
      TAX_CLASS5 type BAPIUPDATE,
      TAX_CLASS6 type BAPIUPDATE,
      TAX_CLASS7 type BAPIUPDATE,
      TAX_CLASS8 type BAPIUPDATE,
      TAX_CLASS9 type BAPIUPDATE,
      MAT_PR_GRP type BAPIUPDATE,
      VAL_TYPE type BAPIUPDATE,
      FIXDAT_QTY type BAPIUPDATE,
      BOMEXPL_NO type BAPIUPDATE,
      RESANALKEY type BAPIUPDATE,
      REQMTS_TYP type BAPIUPDATE,
      NO_GR_POST type BAPIUPDATE,
      BUS_TRANST type BAPIUPDATE,
      OVERHD_KEY type BAPIUPDATE,
      CSTG_SHEET type BAPIUPDATE,
      MATFRGTGRP type BAPIUPDATE,
      PLDLVSHDIN type BAPIUPDATE,
      SEQ_NO type BAPIUPDATE,
      BIL_FORM type BAPIUPDATE,
      DLI_PROFIL type BAPIUPDATE,
      REV_TYPE type BAPIUPDATE,
      BEGDEM_PER type BAPIUPDATE,
      PR_REF_MAT type BAPIUPDATE,
      REFOBJTYPE type BAPIUPDATE,
      REFOBJKEY type BAPIUPDATE,
      REFLOGSYS type BAPIUPDATE,
      ORDER_PROB type BAPIUPDATE,
      MAX_PL_DLV type BAPIUPDATE,
      CFOP_CODE type BAPIUPDATE,
      TAXLAWICMS type BAPIUPDATE,
      TAXLAWIPI type BAPIUPDATE,
      SD_TAXCODE type BAPIUPDATE,
      ASSORT_MOD type BAPIUPDATE,
      COMP_QUANT type BAPIUPDATE,
      TARGET_VAL type BAPIUPDATE,
      PROFIT_CTR type BAPIUPDATE,
      ORDERID type BAPIUPDATE,
      WBS_ELEM type BAPIUPDATE,
      DEPREC_PER type BAPIUPDATE,
      REF_DOC type BAPIUPDATE,
      REF_DOC_IT type BAPIUPDATE,
      REF_DOC_CA type BAPIUPDATE,
      CUST_MAT35 type BAPIUPDATE,
      EXCH_RATE_FI_V type BAPIUPDATE,
      EXCHG_RATE_V type BAPIUPDATE,
      ITEMGUID_ATP type BAPIUPDATE,
      VAL_CONTR type BAPIUPDATE,
      VAL_CON_I type BAPIUPDATE,
      CONFIG_ID type BAPIUPDATE,
      INST_ID type BAPIUPDATE,
      MAT_EXT type BAPIUPDATE,
      MAT_GUID type BAPIUPDATE,
      MAT_VERS type BAPIUPDATE,
      P_MAT_EXT type BAPIUPDATE,
      P_MAT_GUID type BAPIUPDATE,
      P_MAT_VERS type BAPIUPDATE,
      FUNC_AREA type BAPIUPDATE,
      ALTERN_BOM type BAPIUPDATE,
      FKK_CONACCT type BAPIUPDATE,
      EAN_UPC type BAPIUPDATE,
      PRODCAT type BAPIUPDATE,
      SHIP_TYPE type BAPIUPDATE,
      S_PROC_IND type BAPIUPDATE,
      BILL_REL type BAPIUPDATE,
      VW_UEPOS type BAPIUPDATE,
      CAMPAIGN type BAPIUPDATE,
      DLVSCHDUSE type BAPIUPDATE,
      SELECTION type BAPIUPDATE,
      MAT_ENTRD type BAPIUPDATE,
      LOG_SYSTEM_OWN type BAPIUPDATE,
      ITM_TYPE_USAGE type BAPIUPDATE,
      MAT_ENTRD_EXTERNAL type BAPIUPDATE,
      MAT_ENTRD_GUID type BAPIUPDATE,
      MAT_ENTRD_VERSION type BAPIUPDATE,
      LOC_TAXCAT type BAPIUPDATE,
      LOC_ZEROVAT type BAPIUPDATE,
      LOC_ACTCODE type BAPIUPDATE,
      LOC_DISTTYPE type BAPIUPDATE,
      LOC_TXRELCLAS type BAPIUPDATE,
      CALC_MOTIVE type BAPIUPDATE,
      FUND type BAPIUPDATE,
      FUNDS_CTR type BAPIUPDATE,
      CMMT_ITEM type BAPIUPDATE,
      GRANT_NBR type BAPIUPDATE,
      BUDGET_PERIOD type BAPIUPDATE,
      TAXLAWISS type BAPIUPDATE,
      TAXLAWCOFINS type BAPIUPDATE,
      TAXLAWPIS type BAPIUPDATE,
      TREASURY_ACC_SYMBOL type BAPIUPDATE,
      BUSINESS_EVENT_TCODE type BAPIUPDATE,
      MODIFICATION_ALLOWED type BAPIUPDATE,
      CANCELLATION_ALLOWED type BAPIUPDATE,
      PAYMENT_METHODS type BAPIUPDATE,
      BUSINESS_PARTNER_NO type BAPIUPDATE,
      REPORTING_FREQ type BAPIUPDATE,
      CFOP_LONG type BAPIUPDATE,
      SEPA_MANDATE_ID type BAPIUPDATE,
      REQ_SEGMENT type BAPIUPDATE,
      TP_SUBLEVL type BAPIUPDATE,
      TP_AGENCID type BAPIUPDATE,
      TP_ALTRAID type BAPIUPDATE,
      TP_BEGPER type BAPIUPDATE,
      TP_ENDPER type BAPIUPDATE,
      TP_AVTYPE type BAPIUPDATE,
      TP_MAIN_ACCT type BAPIUPDATE,
      TP_SUB_ACCT type BAPIUPDATE,
      TP_BETC type BAPIUPDATE,
      REVACC_REFID type BAPIUPDATE,
      REVACC_REFTYPE type BAPIUPDATE,
      REF_DOC_CA_LONG type BAPIUPDATE,
      INCOTERMSV type BAPIUPDATE,
      INCOTERMS2L type BAPIUPDATE,
      INCOTERMS3L type BAPIUPDATE,
      MATERIAL_LONG type BAPIUPDATE,
      PR_REF_MAT_LONG type BAPIUPDATE,
      MAT_ENTRD_LONG type BAPIUPDATE,
      PO_QUAN type BAPIUPDATE,
      PO_UNIT type BAPIUPDATE,
    end of BAPISDITMX .
  types:
    __BAPISDITMX                   type standard table of BAPISDITMX                     with non-unique default key .
  types:
    ETENR type N length 000004 .
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
    ABART type C length 000001 .
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
    begin of BAPISCHDLX,
      ITM_NUMBER type POSNR_VA,
      SCHED_LINE type ETENR,
      UPDATEFLAG type UPDKZ_D,
      REQ_DATE type BAPIUPDATE,
      DATE_TYPE type BAPIUPDATE,
      REQ_TIME type BAPIUPDATE,
      REQ_QTY type BAPIUPDATE,
      REQ_DLV_BL type BAPIUPDATE,
      SCHED_TYPE type BAPIUPDATE,
      TP_DATE type BAPIUPDATE,
      MS_DATE type BAPIUPDATE,
      LOAD_DATE type BAPIUPDATE,
      GI_DATE type BAPIUPDATE,
      TP_TIME type BAPIUPDATE,
      MS_TIME type BAPIUPDATE,
      LOAD_TIME type BAPIUPDATE,
      GI_TIME type BAPIUPDATE,
      REFOBJTYPE type SWO_OBJTYP,
      REFOBJKEY type SWO_TYPEID,
      DLV_DATE type BAPIUPDATE,
      DLV_TIME type BAPIUPDATE,
      REL_TYPE type BAPIUPDATE,
      PLAN_SCHED_TYPE type BAPIUPDATE,
    end of BAPISCHDLX .
  types:
    __BAPISCHDLX                   type standard table of BAPISCHDLX                     with non-unique default key .
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
endinterface.
