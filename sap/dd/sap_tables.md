# SAP Tabellenlijst

Bron: `DEMO.PUBLIC.SAP_BUSINESS_MODEL` (156 tabellen)

| SAP_TABLE | BUSINESS_TABLE | PRIMARY_KEY | FOREIGN_KEY_RELATIONS |
|-----------|---------------|-------------|----------------------|
| AFKO | Production Order Header | AUFNR | AUFNR -> AUFK |
| AFPO | Production Order Item | AUFNR, POSNR | AUFNR -> AUFK; MATNR -> MARA |
| AFVC | Production Operation | AUFPL, APLZL | AUFPL -> AFKO |
| AFVV | Production Operation | AUFPL, APLZL | AUFPL, APLZL -> AFVC |
| AGR_TEXTS | Role Assignment | MANDT, AGR_NAME, SPRAS | MANDT, AGR_NAME -> AGR_USERS |
| AGR_USERS | Role Assignment | MANDT, AGR_NAME, UNAME, FROM_DAT, TO_DAT | None |
| ANEP | Asset Line Item | BUKRS, ANLN1, ANLN2, GJAHR, LNRAN | BUKRS, ANLN1, ANLN2 -> ANLA |
| ANLA | Asset Master | BUKRS, ANLN1, ANLN2 | None |
| AUFK | Production Order Master | AUFNR | None |
| BALDAT | Application Log Data | LOG_HANDLE, LOGNUMBER | LOG_HANDLE -> BALHDR |
| BALHDR | Application Log Header | LOG_HANDLE | None |
| BDCP2 | Change Pointer | POINTER_ID | None |
| BKPF | GL Document Header | BUKRS, BELNR, GJAHR | None |
| BSAD | Customer Cleared Item | BUKRS, KUNNR, BELNR, GJAHR, BUZEI | KUNNR -> KNA1; BUKRS, BELNR, GJAHR -> BKPF |
| BSAK | Vendor Cleared Item | BUKRS, LIFNR, BELNR, GJAHR, BUZEI | LIFNR -> LFA1; BUKRS, BELNR, GJAHR -> BKPF |
| BSAS | GL Cleared Item | BUKRS, HKONT, BELNR, GJAHR, BUZEI | None |
| BSEG | GL Document Item | BUKRS, BELNR, GJAHR, BUZEI | BUKRS, BELNR, GJAHR -> BKPF |
| BSID | Customer Open Item | BUKRS, KUNNR, BELNR, GJAHR, BUZEI | KUNNR -> KNA1; BUKRS, BELNR, GJAHR -> BKPF |
| BSIK | Vendor Open Item | BUKRS, LIFNR, BELNR, GJAHR, BUZEI | LIFNR -> LFA1; BUKRS, BELNR, GJAHR -> BKPF |
| CDHDR | Change Document | MANDANT, OBJECTCLAS, OBJECTID, CHANGENR | None |
| CDPOS | Change Document | MANDANT, OBJECTCLAS, OBJECTID, CHANGENR, TABNAME, TABKEY, FNAME | MANDANT, OBJECTCLAS, OBJECTID, CHANGENR -> CDHDR |
| CE1XXXX | Profitability Line Item | PEESSION | None |
| CE2XXXX | Profitability Totals | PAESSION | None |
| COBK | Controlling Document Header | KOKRS, BELNR, GJAHR | None |
| COEP | Controlling Line Item | KOKRS, BELNR, GJAHR, BUZEI | KOKRS, BELNR, GJAHR -> COBK; KOSTL -> CSKS; KSTAR -> CSKA |
| COSP | Cost Center Totals | KOKRS, OBJNR, GJAHR, WRTTP, VERSN, KSTAR | KOKRS, KSTAR -> CSKA |
| COSS | Cost Center Totals by Element | KOKRS, OBJNR, GJAHR, WRTTP, VERSN, KSTAR, LSTAR | KOKRS, KSTAR -> CSKA |
| CRHD | Work Center | OBJID | None |
| CRTX | Work Center | OBJID, SPRAS | OBJID -> CRHD |
| CSKA | Cost Element | KOKRS, KSTAR | None |
| CSKB | Cost Element | KOKRS, KSTAR, BUKRS | KOKRS, KSTAR -> CSKA |
| CSKS | Cost Center | KOKRS, KOSTL | None |
| CSKT | Cost Center | KOKRS, KOSTL, SPRAS | KOKRS, KOSTL -> CSKS |
| CSKU | Cost Element | KOKRS, KSTAR, SPRAS | KOKRS, KSTAR -> CSKA |
| DD02L | Table Definition | TABNAME, AS4LOCAL, AS4VERS | None |
| DD02T | Table Definition | TABNAME, AS4LOCAL, AS4VERS, DDLANGUAGE | TABNAME, AS4LOCAL, AS4VERS -> DD02L |
| DD03L | Field Definition | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS | None |
| DD03T | Field Definition | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, DDLANGUAGE | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS -> DD03L |
| EBAN | Purchase Requisition | BANFN, BNFPO | MATNR -> MARA |
| EDID4 | IDoc | DOCNUM, COUNTER | DOCNUM -> EDIDC |
| EDIDC | IDoc | DOCNUM | None |
| EINA | Purchasing Info Record | INFNR | None |
| EINE | Purchasing Info Record | INFNR, EKORG | INFNR -> EINA |
| EKBE | Purchase Order History | EBELN, EBELP, VGABE, GJAHR, BELNR | EBELN, EBELP -> EKPO |
| EKET | Purchase Order Schedule Line | EBELN, EBELP, ETENR | EBELN, EBELP -> EKPO |
| EKKO | Purchase Order Header | EBELN | LIFNR -> LFA1; BSART -> T161 |
| EKPO | Purchase Order Item | EBELN, EBELP | EBELN -> EKKO; MATNR -> MARA; LIFNR -> LFA1 |
| FAGLFLEXA | Flexible GL Line Item | RLDNR, RBUKRS, BELNR, GJAHR, DOCLN | None |
| HRP1000 | HR Object | OTYPE, OBJID, PLVAR, ENDDA, BEGDA | None |
| HRP1001 | HR Object | OTYPE, OBJID, PLVAR, RSIGN, RELAT, ENDDA, BEGDA | OTYPE, OBJID -> HRP1000 |
| HRP1002 | HR Object | OTYPE, OBJID, PLVAR, ENDDA, BEGDA | OTYPE, OBJID -> HRP1000 |
| INFO | Purchasing Info Record | INFNR | None |
| JEST | Object Status | OBJNR, STAT | None |
| KEKO | Product Cost Estimate | BZOBJ, KALNR, KALKA, KADKY, TVERS, BWVAR | None |
| KEPH | Product Cost Component | KALNR, KALKA, KADKY, TVERS, BWVAR, ELESSION | KALNR, KALKA, KADKY, TVERS, BWVAR -> KEKO |
| KNA1 | Customer | KUNNR | None |
| KNVV | Customer | KUNNR, VKORG, VTWEG, SPART | KUNNR -> KNA1 |
| KONV | Pricing Condition | KNUMV, KPOSN, STUNR, ZAESSION | None |
| LAGP | Warehouse | LGNUM, LGPLA | None |
| LEIN | Warehouse | LENUM | None |
| LFA1 | Supplier | LIFNR | None |
| LFB1 | Supplier | LIFNR, BUKRS | LIFNR -> LFA1 |
| LFM1 | Supplier | LIFNR, EKORG | LIFNR -> LFA1 |
| LIKP | Delivery Header | VBELN | KUNNR -> KNA1 |
| LIPS | Delivery Item | VBELN, POSNR | VBELN -> LIKP; MATNR -> MARA |
| LQUA | Warehouse | LGNUM, LQNUM | LGNUM, LGPLA -> LAGP |
| LTAK | Transfer Order Header | LGNUM, TANUM | None |
| LTAP | Transfer Order Item | LGNUM, TANUM, TAPOS | LGNUM, TANUM -> LTAK |
| LTBK | Transfer Requirement Header | LGNUM, TBNUM | None |
| LTBP | Transfer Requirement Item | LGNUM, TBNUM, TBPOS | LGNUM, TBNUM -> LTBK |
| MAKT | Material | MATNR, SPRAS | MATNR -> MARA |
| MAPL | Material | MATNR, WERKS, PLNTY, PLNNR | MATNR, WERKS -> MARC |
| MARA | Material | MATNR | None |
| MARC | Material | MATNR, WERKS | MATNR -> MARA; WERKS -> T001W |
| MARD | Material | MATNR, WERKS, LGORT | MATNR, WERKS -> MARC; WERKS, LGORT -> T001L |
| MAST | Material | MATNR, WERKS, STLAN, STLNR | MATNR, WERKS -> MARC; STLNR -> STKO |
| MDKP | MRP Document Header | DTNUM | None |
| MDTB | MRP Document Item | DTNUM, DTPOS | DTNUM -> MDKP |
| MKPF | Material Document Header | MBLNR, MJAHR | None |
| MLCD | Material Ledger Document | KALNR, BDATJ, POPER | None |
| MSEG | Material Document Item | MBLNR, MJAHR, ZEILE | MBLNR, MJAHR -> MKPF; MATNR -> MARA; WERKS -> T001W |
| OBJK | Serial Number Object | OBKNR | None |
| PA0000 | Employee Action | PERNR, ENDDA, BEGDA | None |
| PA0001 | Employee Org Assignment | PERNR, ENDDA, BEGDA | PERNR -> PA0000; KOSTL -> CSKS |
| PA0002 | Employee Personal Data | PERNR, ENDDA, BEGDA | None |
| PA0006 | Employee Address | PERNR, SUBTY, ENDDA, BEGDA | None |
| PA0007 | Employee Working Time | PERNR, ENDDA, BEGDA | None |
| PA0008 | Employee Basic Pay | PERNR, ENDDA, BEGDA | None |
| PA0014 | Employee Recurring Payment | PERNR, SUBTY, ENDDA, BEGDA | None |
| PA0015 | Employee Additional Payment | PERNR, SUBTY, ENDDA, BEGDA | None |
| PA2001 | Employee Absence | PERNR, SUBTY, ENDDA, BEGDA | None |
| PA2002 | Employee Attendance | PERNR, SUBTY, ENDDA, BEGDA | None |
| PA2006 | Employee Absence Quota | PERNR, SUBTY, ENDDA, BEGDA | None |
| PBED | Independent Requirement Schedule | BESSION, PBDNR, PDATU | BESSION, PBDNR -> PBIM |
| PBIM | Independent Requirement | BESSION, PBDNR | None |
| PLAF | Planned Order | PLNUM | None |
| PLKO | Routing | PLNTY, PLNNR, PLNAL | None |
| PLPO | Routing | PLNTY, PLNNR, PLNAL, VORNR | PLNTY, PLNNR, PLNAL -> PLKO |
| QMEL | Quality Notification | QMNUM | None |
| RBKP | Procurement Invoice Header | BELNR, GJAHR | None |
| RESB | Production Reservation | RSNUM, RSPOS | AUFNR -> AUFK; MATNR -> MARA |
| RLGRAP | Inventory Snapshot | LGNUM, IVNUM, IVPOS | None |
| RSEG | Procurement Invoice Item | BELNR, GJAHR, BUZEI | BELNR, GJAHR -> RBKP; EBELN, EBELP -> EKPO |
| SER01 | Serial Number Document | OBKNR | None |
| STKO | Bill of Materials | STLNR, STLAL | None |
| STPO | Bill of Materials | STLNR, STLKN | STLNR -> STKO |
| T000 | Client | MANDT | None |
| T000T | Client | MANDT, SPRAS | MANDT -> T000 |
| T001L | Plant | WERKS, LGORT | WERKS -> T001W |
| T001W | Plant | WERKS | None |
| T156 | Movement Type | BWART | None |
| T156T | Movement Type | BWART, SPRAS | BWART -> T156 |
| T161 | Purchasing Document Type | BSART, BSTYP | None |
| T161T | Purchasing Document Type | BSART, BSTYP, SPRAS | BSART, BSTYP -> T161 |
| T300 | Warehouse Number | LGNUM | None |
| T300T | Warehouse Number | LGNUM, SPRAS | LGNUM -> T300 |
| T527X | HR Object | ORGEH, SPRAS | None |
| T529T | Employee Group | PERSG, SPRAS | None |
| T552T | Work Schedule | MESSION, SPRAS | None |
| T554T | Absence Type | MOESSION, AWESSION, SPRAS | None |
| T556T | Attendance Type | MOESSION, SUBTY, SPRAS | None |
| T685 | Condition Type | KSCHL, KAPPL | None |
| T685T | Condition Type | KSCHL, KAPPL, SPRAS | KSCHL, KAPPL -> T685 |
| TBDLS | Logical System | LOGSYS | None |
| TCURC | Currency | WAERS | None |
| TCURT | Currency | WAESSION, SPRAS | None |
| TCURX | Currency | CURRKEY | None |
| TJ02 | System Status | ISTAT | None |
| TJ02T | System Status | ISTAT, SPRAS | ISTAT -> TJ02 |
| TKA01 | Controlling Area | KOKRS | None |
| TKT01 | Controlling Area | KOKRS, SPRAS | KOKRS -> TKA01 |
| TTDS | Shipment Type | SDABW | None |
| TTDST | Shipment Type | SDABW, SPRAS | SDABW -> TTDS |
| TVAK | Sales Document Type | AUART | None |
| TVAKT | Sales Document Type | AUART, SPRAS | AUART -> TVAK |
| TVAP | Sales Item Category | PSTYV | None |
| TVAPT | Sales Item Category | PSTYV, SPRAS | PSTYV -> TVAP |
| TVLK | Delivery Type | LFART | None |
| TVLKT | Delivery Type | LFART, SPRAS | LFART -> TVLK |
| USR02 | System User | MANDT, BNAME | None |
| VBAK | Sales Order Header | VBELN | KUNNR -> KNA1; AUART -> TVAK |
| VBAP | Sales Order Item | VBELN, POSNR | VBELN -> VBAK; MATNR -> MARA |
| VBEP | Sales Schedule Line | VBELN, POSNR, ETENR | VBELN, POSNR -> VBAP |
| VBFA | Sales Document Flow | VBELV, POSNV, VBELN, POSNN | VBELV -> VBAK |
| VBKD | Customer | VBELN, POSNR | VBELN -> VBAK |
| VBPA | Customer | VBELN, POSNR, PARVW | VBELN -> VBAK; KUNNR -> KNA1 |
| VBRK | Billing Document Header | VBELN | KUNNR -> KNA1 |
| VBRP | Billing Document Item | VBELN, POSNR | VBELN -> VBRK; MATNR -> MARA |
| VBUK | Sales Order Status | VBELN | VBELN -> VBAK |
| VBUP | Sales Item Status | VBELN, POSNR | VBELN, POSNR -> VBAP |
| VFKN | Shipment Cost Item | VBELN, POSNR | VBELN -> VFKP |
| VFKP | Shipment Cost Header | VBELN | None |
| VTFA | Shipment | VBELV, POSNV, VBELN, POSNN | VBELV -> VTTK |
| VTTK | Shipment | TKNUM | None |
| VTTP | Shipment | TKNUM, TPNUM | TKNUM -> VTTK |
| VTTS | Shipment | TKNUM, TSNUM | TKNUM -> VTTK |
