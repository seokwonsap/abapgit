interface ZIF_ZCA_SALESORDER_GETDETAIL1
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
    begin of BAPIVBELN,
      VBELN type VBELN_VA,
    end of BAPIVBELN .
  types:
    POSNR_VA type N length 000006 .
  types:
    MATNR18 type C length 000018 .
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
    ISO_ZIEME type C length 000003 .
  types:
    UMZIZ type P length 3  decimals 000000 .
  types:
    UMZIN type P length 3  decimals 000000 .
  types:
    MEINS type C length 000003 .
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
    VRKME type C length 000003 .
  types:
    ISOCD_UNIT type C length 000003 .
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
    KPEIN type P length 3  decimals 000000 .
  types:
    KMEIN type C length 000003 .
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
    PRSOK type C length 000001 .
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
    STCUR_P type P length 5  decimals 000005 .
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
    SOBKZ type C length 000001 .
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
    KOUPD type C length 000001 .
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
  types CMPRE_FLT type F .
  types:
    ABSFORM_CM type C length 000002 .
  types ABGES_CM type F .
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
    KNUMA_PI type C length 000010 .
  types:
    KNUMA_AG type C length 000010 .
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
    STCUR_V type P length 5  decimals 000005 .
  types:
    PACKNO type N length 000010 .
  types:
    MGV_MATERIAL_EXTERNAL type C length 000040 .
  types:
    MGV_MATERIAL_GUID type C length 000032 .
  types:
    MGV_MATERIAL_VERSION type C length 000010 .
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
    MATNR40 type C length 000040 .
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
