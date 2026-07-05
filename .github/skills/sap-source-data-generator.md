# Skill: SAP Source Data Generator

## Doel
Genereer realistische testdata voor alle tabellen in schema `SAP.SAP_ECC`. De data moet referentieel integer zijn, uitgaande van **100.000 sales orders** als basis, met proportionele vulling van alle gerelateerde tabellen.

## Volumemodel (gebaseerd op 100.000 orders)

| Categorie | Tabel(len) | Volume | Toelichting |
|-----------|-----------|--------|-------------|
| **Klanten** | KNA1 | 10.000 | Unieke klanten |
| **Klanten - Sales Area** | KNVV | 12.000 | Sommige klanten in meerdere sales areas |
| **Leveranciers** | LFA1 | 2.000 | Unieke leveranciers |
| **Leveranciers - Company** | LFB1 | 2.500 | Leverancier per company code |
| **Leveranciers - Purchasing** | LFM1 | 2.200 | Leverancier per purchasing org |
| **Materialen** | MARA | 5.000 | Unieke materialen |
| **Materialen - Tekst** | MAKT | 5.000 | 1 tekst per materiaal (taal EN) |
| **Materialen - Plant** | MARC | 8.000 | Materiaal per plant |
| **Materialen - Storage** | MARD | 12.000 | Materiaal per plant/storage location |
| **Sales Orders - Header** | VBAK | 100.000 | Basis: 100K orders |
| **Sales Orders - Items** | VBAP | 300.000 | Gemiddeld 3 items per order |
| **Sales Orders - Schedule** | VBEP | 350.000 | 1+ schedule line per item |
| **Sales Orders - Partners** | VBPA | 400.000 | 4 partners per order (AG, WE, RE, RG) |
| **Sales Orders - Business Data** | VBKD | 100.000 | 1 per order header |
| **Sales Orders - Status Header** | VBUK | 100.000 | 1 per order |
| **Sales Orders - Status Item** | VBUP | 300.000 | 1 per item |
| **Sales Orders - Doc Flow** | VBFA | 500.000 | Meerdere flow records per order |
| **Sales Orders - Conditions** | KONV | 900.000 | ~3 condities per item |
| **Leveringen - Header** | LIKP | 80.000 | ~80% van orders geleverd |
| **Leveringen - Items** | LIPS | 250.000 | Items in leveringen |
| **Facturen - Header** | VBRK | 75.000 | ~75% gefactureerd |
| **Facturen - Items** | VBRP | 230.000 | Factuuritems |
| **Facturen - Account** | VFKN | 75.000 | Account assignment per factuur |
| **Facturen - Partner** | VFKP | 150.000 | Partners per factuur |
| **Inkoop - Header** | EKKO | 20.000 | Inkooporders |
| **Inkoop - Items** | EKPO | 60.000 | ~3 items per PO |
| **Inkoop - Schedule** | EKET | 65.000 | Schedule lines |
| **Inkoop - History** | EKBE | 80.000 | GR/IR history |
| **Inkoop - Requisitions** | EBAN | 25.000 | Bestelaanvragen |
| **Inkoop - Info Record** | EINA | 8.000 | Purchasing info records |
| **Inkoop - Info Conditions** | EINE | 10.000 | Info record conditions |
| **Inkoop - Invoice Header** | RBKP | 18.000 | Inkoopfacturen |
| **Inkoop - Invoice Items** | RSEG | 55.000 | Factuuritems |
| **Boekhouding - Doc Header** | BKPF | 200.000 | Boekingsdocumenten |
| **Boekhouding - Doc Items** | BSEG | 800.000 | Boekingsregels |
| **Boekhouding - Klant Open** | BSID | 50.000 | Open klantposten |
| **Boekhouding - Klant Cleared** | BSAD | 150.000 | Afgeboekte klantposten |
| **Boekhouding - Leverancier Open** | BSIK | 30.000 | Open leveranciersposten |
| **Boekhouding - Leverancier Cleared** | BSAK | 100.000 | Afgeboekte leveranciersposten |
| **Boekhouding - GL Cleared** | BSAS | 80.000 | Afgeboekte grootboekposten |
| **Boekhouding - New GL** | FAGLFLEXA | 800.000 | New GL line items |
| **Productie - Orders** | AFKO | 15.000 | Productieorders |
| **Productie - Order Items** | AFPO | 20.000 | Productieorder items |
| **Productie - Operations** | AFVC | 60.000 | Bewerkingen |
| **Productie - Op Values** | AFVV | 60.000 | Bewerkingswaarden |
| **Productie - Internal Orders** | AUFK | 25.000 | Interne orders |
| **Productie - Planned Orders** | PLAF | 10.000 | Geplande orders |
| **Productie - Reservations** | RESB | 80.000 | Materiaalmutaties gereserveerd |
| **Productie - Routing Header** | PLKO | 3.000 | Routing headers |
| **Productie - Routing Ops** | PLPO | 15.000 | Routing bewerkingen |
| **Productie - BOM Header** | STKO | 4.000 | Stuklijst headers |
| **Productie - BOM Items** | STPO | 25.000 | Stuklijst items |
| **Productie - BOM Assignment** | MAST | 5.000 | Materiaal-stuklijst link |
| **Productie - Task List** | MAPL | 4.500 | Materiaal-routing link |
| **Magazijn - Quants** | LQUA | 30.000 | Voorraadplaatsen |
| **Magazijn - Transfer Order H** | LTAK | 20.000 | Verplaatsingsopdrachten |
| **Magazijn - Transfer Order I** | LTAP | 40.000 | TO items |
| **Magazijn - Transfer Req H** | LTBK | 15.000 | Transfer requests |
| **Magazijn - Transfer Req I** | LTBP | 30.000 | TR items |
| **Magazijn - Storage Bins** | LAGP | 5.000 | Opslaglocaties |
| **Magazijn - Handling Units** | LEIN | 8.000 | Handling units |
| **Magazijn - Goods Receipt** | RLGRAP | 25.000 | GR in WM |
| **Voorraad - Doc Header** | MKPF | 50.000 | Materiaaldocumenten |
| **Voorraad - Doc Items** | MSEG | 150.000 | Materiaalboekingen |
| **MRP - Header** | MDKP | 8.000 | MRP resultaten |
| **MRP - Table** | MDTB | 40.000 | MRP tabel entries |
| **Demand - Indep Req** | PBED | 10.000 | Onafhankelijke behoeften |
| **Demand - Schedule** | PBIM | 10.000 | Behoeften planning |
| **Kwaliteit - Notifications** | QMEL | 5.000 | Kwaliteitsmeldingen |
| **Serialnummers** | SER01 | 20.000 | Serienummers op leveringen |
| **Object Links** | OBJK | 20.000 | Object-serienummer links |
| **CO - Actual Postings** | COEP | 200.000 | CO werkelijke boekingen |
| **CO - Period Totals Primary** | COSP | 50.000 | Periodetotalen primair |
| **CO - Period Totals Secondary** | COSS | 30.000 | Periodetotalen secundair |
| **CO - Doc Header** | COBK | 50.000 | CO documenten |
| **CO - PA Actual** | CE1XXXX | 300.000 | CO-PA werkelijk |
| **CO - PA Plan** | CE2XXXX | 100.000 | CO-PA plan |
| **CO - Product Costing** | KEKO | 5.000 | Kostenramingen |
| **CO - Cost Components** | KEPH | 25.000 | Kostencomponenten |
| **CO - ML Actual** | MLCD | 50.000 | Material ledger |
| **Kostenplaatsen** | CSKS | 500 | Kostenplaatsen |
| **Kostenplaats Tekst** | CSKT | 500 | Kostenplaats teksten |
| **Kostensoorten - Chart** | CSKA | 200 | Kostensoorten per KoRe |
| **Kostensoorten - Area** | CSKB | 300 | Kostensoorten per CO area |
| **Kostensoorten - Assignments** | CSKU | 300 | Kostensoort assignments |
| **Work Centers** | CRHD | 1.000 | Werkplekken |
| **Work Center Text** | CRTX | 1.000 | Werkplek teksten |
| **Vaste Activa** | ANLA | 5.000 | Activa master |
| **Vaste Activa - Postings** | ANEP | 20.000 | Activa boekingen |
| **Wijzigingsdocumenten - H** | CDHDR | 100.000 | Change doc headers |
| **Wijzigingsdocumenten - I** | CDPOS | 300.000 | Change doc items |
| **HR - Actions** | PA0000 | 3.000 | HR acties |
| **HR - Org Assignment** | PA0001 | 3.000 | Org toewijzing |
| **HR - Personal Data** | PA0002 | 3.000 | Persoonlijke gegevens |
| **HR - Addresses** | PA0006 | 3.000 | Adressen |
| **HR - Work Schedule** | PA0007 | 3.000 | Werkrooster |
| **HR - Basic Pay** | PA0008 | 3.000 | Basissalaris |
| **HR - Recurring Payments** | PA0014 | 2.000 | Terugkerende betalingen |
| **HR - Additional Payments** | PA0015 | 2.000 | Extra betalingen |
| **HR - Absences** | PA2001 | 8.000 | Afwezigheid |
| **HR - Attendance** | PA2002 | 5.000 | Aanwezigheid |
| **HR - Absence Quotas** | PA2006 | 3.000 | Afwezigheidquota |
| **HR - Org Objects** | HRP1000 | 5.000 | Org objecten |
| **HR - Org Relationships** | HRP1001 | 8.000 | Org relaties |
| **HR - Org Descriptions** | HRP1002 | 3.000 | Org beschrijvingen |
| **Transport - Header** | VTTK | 10.000 | Transporten |
| **Transport - Items** | VTTP | 25.000 | Transport items |
| **Transport - Stages** | VTTS | 15.000 | Transport stages |
| **Transport - Copy Control** | VTFA | 30.000 | Kopieerregels |
| **Users** | USR02 | 500 | Gebruikers |
| **Roles - Texts** | AGR_TEXTS | 100 | Rol teksten |
| **Roles - Users** | AGR_USERS | 1.000 | Rol-gebruiker toewijzingen |
| **System Status** | JEST | 300.000 | Statusrecords |
| **Status Definitions** | TJ02 | 50 | Status definities |
| **Status Texts** | TJ02T | 50 | Status teksten |
| **Application Log - Header** | BALHDR | 20.000 | Log headers |
| **Application Log - Data** | BALDAT | 50.000 | Log data |
| **IDocs - Control** | EDIDC | 30.000 | IDoc control records |
| **IDocs - Data** | EDID4 | 150.000 | IDoc data records |
| **Change Pointers** | BDCP2 | 50.000 | Change pointers |
| **Info System** | INFO | 5.000 | Info records |
| **CO - Controlling Area** | TKA01 | 2 | Controlling areas |
| **CO - Controlling Text** | TKT01 | 2 | CO area teksten |
| **Pricing - Condition Types** | T685 | 50 | Conditiesoorten |
| **Pricing - Condition Texts** | T685T | 50 | Conditiesoort teksten |
| **Clients** | T000 | 3 | Mandanten |
| **Clients - Text** | T000T | 3 | Mandant teksten |
| **Storage Locations** | T001L | 50 | Opslaglocaties |
| **Plants** | T001W | 10 | Vestigingen |
| **Movement Types** | T156 | 80 | Bewegingssoorten |
| **Movement Type Texts** | T156T | 80 | Bewegingssoort teksten |
| **Purchasing Doc Types** | T161 | 10 | Inkoopdocumentsoorten |
| **Purchasing Doc Type Texts** | T161T | 10 | Teksten |
| **Warehouse Numbers** | T300 | 5 | Magazijnnummers |
| **Warehouse Texts** | T300T | 5 | Magazijn teksten |
| **Employee Groups** | T527X | 10 | Medewerkersgroepen |
| **Employee Subgroups** | T529T | 20 | Medewerkerssubgroepen |
| **Work Schedules** | T552T | 10 | Werkroosters |
| **Absence Types** | T554T | 20 | Afwezigheidsoorten |
| **Attendance Types** | T556T | 15 | Aanwezigheidsoorten |
| **Logical Systems** | TBDLS | 5 | Logische systemen |
| **Currencies** | TCURC | 30 | Valuta's |
| **Currency Texts** | TCURT | 30 | Valuta teksten |
| **Currency Decimals** | TCURX | 30 | Valuta decimalen |
| **Time Dep. Scheduling** | TTDS | 10 | Tijdsafh. planning |
| **Time Dep. Scheduling Text** | TTDST | 10 | Teksten |
| **Sales Doc Types** | TVAK | 10 | Verkoopdocumentsoorten |
| **Sales Doc Type Texts** | TVAKT | 10 | Teksten |
| **Sales Item Categories** | TVAP | 15 | Artikelcategorieën |
| **Sales Item Cat. Texts** | TVAPT | 15 | Teksten |
| **Delivery Types** | TVLK | 8 | Leveringssoorten |
| **Delivery Type Texts** | TVLKT | 8 | Teksten |

## Referentiële Integriteit - Sleutelrelaties

De data moet deze foreign key relaties respecteren (afgeleid uit DD05S):

### Sales & Distribution (SD)
```
VBAK.KUNNR  → KNA1.KUNNR        (klant op order)
VBAK.VBTYP  → TVAK.AUART        (ordersort)
VBAP.VBELN  → VBAK.VBELN        (item → header)
VBAP.MATNR  → MARA.MATNR        (materiaal op item)
VBEP.VBELN  → VBAP.VBELN        (schedule → item)
VBEP.POSNR  → VBAP.POSNR
VBPA.VBELN  → VBAK.VBELN        (partner → order)
VBPA.KUNNR  → KNA1.KUNNR        (partner is klant)
VBKD.VBELN  → VBAK.VBELN        (business data → order)
VBUK.VBELN  → VBAK.VBELN        (status → order)
VBUP.VBELN  → VBAP.VBELN        (item status → item)
VBUP.POSNR  → VBAP.POSNR
VBFA.VBELV  → VBAK.VBELN        (voorafgaand document)
VBFA.VBELN  → LIKP.VBELN / VBRK.VBELN  (volgend document)
KONV.KNUMV  → VBAK.KNUMV        (conditie → order condities)
```

### Deliveries (LE-SHP)
```
LIKP.KUNNR  → KNA1.KUNNR        (klant op levering)
LIKP.VBELN  verwijst naar eigen nummerbereik
LIPS.VBELN  → LIKP.VBELN        (item → header)
LIPS.VGBEL  → VBAK.VBELN        (ref naar salesorder)
LIPS.VGPOS  → VBAP.POSNR
LIPS.MATNR  → MARA.MATNR
```

### Billing (SD-BIL)
```
VBRK.KUNAG  → KNA1.KUNNR        (opdrachtgever)
VBRK.VBELN  verwijst naar eigen nummerbereik
VBRP.VBELN  → VBRK.VBELN        (item → header)
VBRP.VGBEL  → LIKP.VBELN        (ref naar levering)
VBRP.MATNR  → MARA.MATNR
VFKN.VBELN  → VBRK.VBELN
VFKP.VBELN  → VBRK.VBELN
```

### Purchasing (MM-PUR)
```
EKKO.LIFNR  → LFA1.LIFNR        (leverancier op PO)
EKKO.BUKRS  → T000.MANDT (company code)
EKPO.EBELN  → EKKO.EBELN        (item → header)
EKPO.MATNR  → MARA.MATNR
EKET.EBELN  → EKPO.EBELN        (schedule → item)
EKET.EBELP  → EKPO.EBELP
EKBE.EBELN  → EKPO.EBELN        (history → item)
EKBE.EBELP  → EKPO.EBELP
EBAN.MATNR  → MARA.MATNR
EINA.LIFNR  → LFA1.LIFNR        (info record → leverancier)
EINA.MATNR  → MARA.MATNR
EINE.INFNR  → EINA.INFNR
RBKP.LIFNR  → LFA1.LIFNR
RBKP.BELNR  → BKPF.BELNR
RSEG.BELNR  → RBKP.BELNR        (item → header)
RSEG.EBELN  → EKKO.EBELN
RSEG.EBELP  → EKPO.EBELP
```

### Finance (FI)
```
BKPF.BUKRS  → T000.MANDT
BKPF.WAERS  → TCURC.WAERS
BSEG.BUKRS  → BKPF.BUKRS        (item → header)
BSEG.BELNR  → BKPF.BELNR
BSEG.GJAHR  → BKPF.GJAHR
BSEG.KUNNR  → KNA1.KUNNR        (als klantboeking)
BSEG.LIFNR  → LFA1.LIFNR        (als leveranciersboeking)
BSEG.MATNR  → MARA.MATNR        (als materiaalboeking)
BSID.KUNNR  → KNA1.KUNNR
BSID.BUKRS  → BKPF.BUKRS
BSAD.KUNNR  → KNA1.KUNNR
BSIK.LIFNR  → LFA1.LIFNR
BSAK.LIFNR  → LFA1.LIFNR
FAGLFLEXA.BUKRS → BKPF.BUKRS
FAGLFLEXA.BELNR → BKPF.BELNR
```

### Production (PP)
```
AUFK.WERKS  → T001W.WERKS
AFKO.AUFNR  → AUFK.AUFNR        (prod order → internal order)
AFPO.AUFNR  → AUFK.AUFNR
AFPO.MATNR  → MARA.MATNR
AFVC.AUFPL  → AFKO.AUFPL        (operation → order routing)
AFVV.AUFPL  → AFVC.AUFPL        (op values → operation)
AFVV.APLZL  → AFVC.APLZL
PLAF.MATNR  → MARA.MATNR
PLAF.PLWRK  → T001W.WERKS
RESB.AUFNR  → AUFK.AUFNR
RESB.MATNR  → MARA.MATNR
STKO.STLNR  eigen nummerbereik
STPO.STLNR  → STKO.STLNR
STPO.IDNRK  → MARA.MATNR       (component materiaal)
MAST.MATNR  → MARA.MATNR
MAST.STLNR  → STKO.STLNR
PLKO.PLNNR  eigen nummerbereik
PLPO.PLNNR  → PLKO.PLNNR
MAPL.MATNR  → MARA.MATNR
MAPL.PLNNR  → PLKO.PLNNR
```

### Warehouse Management (WM)
```
LQUA.LGNUM  → T300.LGNUM
LQUA.MATNR  → MARA.MATNR
LTAK.LGNUM  → T300.LGNUM
LTAP.LGNUM  → LTAK.LGNUM
LTAP.TANUM  → LTAK.TANUM
LTAP.MATNR  → MARA.MATNR
LTBK.LGNUM  → T300.LGNUM
LTBP.LGNUM  → LTBK.LGNUM
LTBP.TBNUM  → LTBK.TBNUM
LTBP.MATNR  → MARA.MATNR
LAGP.LGNUM  → T300.LGNUM
```

### Inventory (MM-IM)
```
MKPF.MBLNR  eigen nummerbereik
MKPF.BWART  → T156.BWART
MSEG.MBLNR  → MKPF.MBLNR       (item → header)
MSEG.MATNR  → MARA.MATNR
MSEG.WERKS  → T001W.WERKS
MSEG.LGORT  → T001L.LGORT
```

### Controlling (CO)
```
COEP.KOKRS  → TKA01.KOKRS
COEP.BELNR  → COBK.BELNR
COBK.KOKRS  → TKA01.KOKRS
COSP.KOKRS  → TKA01.KOKRS
COSP.KOSTL  → CSKS.KOSTL
COSS.KOKRS  → TKA01.KOKRS
CE1XXXX.KOKRS → TKA01.KOKRS
CE2XXXX.KOKRS → TKA01.KOKRS
KEKO.MATNR  → MARA.MATNR
KEKO.WERKS  → T001W.WERKS
KEPH.KALNR  → KEKO.KALNR
MLCD.MATNR  → MARA.MATNR
MLCD.BWKEY  → T001W.WERKS
CSKS.KOKRS  → TKA01.KOKRS
```

### HR
```
PA0001.BUKRS → T000.MANDT (company)
PA0001.WERKS → T001W.WERKS
PA0001.KOSTL → CSKS.KOSTL
HRP1001.OBJID → HRP1000.OBJID   (relatie → object)
```

### Change Documents
```
CDHDR.MANDANT → T000.MANDT
CDPOS.MANDANT → CDHDR.MANDANT
CDPOS.OBJECTCLAS → CDHDR.OBJECTCLAS
CDPOS.OBJECTID → CDHDR.OBJECTID
CDPOS.CHANGENR → CDHDR.CHANGENR
```

## Instructies voor Data Generatie

### Stap 1: Genereer Master Data (configuratie/stamgegevens)

Eerst de configuratietabellen vullen (T-tabellen) omdat alles ernaar verwijst:

```sql
-- Volgorde van laden:
-- 1. T000, T000T (mandanten)
-- 2. TCURC, TCURT, TCURX (valuta)
-- 3. T001W (plants), T001L (storage locations)
-- 4. T300, T300T (warehouses)
-- 5. TKA01, TKT01 (controlling areas)
-- 6. TVAK, TVAKT, TVAP, TVAPT (sales doc types)
-- 7. TVLK, TVLKT (delivery types)
-- 8. T161, T161T (purchasing doc types)
-- 9. T156, T156T (movement types)
-- 10. T685, T685T (condition types)
-- 11. TJ02, TJ02T (status)
-- 12. T527X, T529T, T552T, T554T, T556T (HR config)
-- 13. TTDS, TTDST (scheduling)
-- 14. TBDLS (logical systems)
-- 15. USR02 (users)
-- 16. AGR_TEXTS, AGR_USERS (roles)
```

### Stap 2: Genereer Stamgegevens (master data)

```sql
-- Volgorde:
-- 1. KNA1 (klanten) - 10.000 records
-- 2. KNVV (klant sales area) - 12.000 records
-- 3. LFA1 (leveranciers) - 2.000 records
-- 4. LFB1, LFM1 (leverancier company/purchasing)
-- 5. MARA (materialen) - 5.000 records
-- 6. MAKT (materiaaltekst)
-- 7. MARC (materiaal-plant)
-- 8. MARD (materiaal-storage)
-- 9. CSKS, CSKT (kostenplaatsen)
-- 10. CSKA, CSKB, CSKU (kostensoorten)
-- 11. CRHD, CRTX (work centers)
-- 12. ANLA (vaste activa)
-- 13. HRP1000, HRP1001, HRP1002 (HR org)
-- 14. LAGP (storage bins)
```

### Stap 3: Genereer Transactiedata

```sql
-- Volgorde (respecteer referenties):
-- 1. AUFK (interne orders)
-- 2. VBAK → VBAP → VBEP → VBPA → VBKD → VBUK → VBUP → KONV (sales flow)
-- 3. LIKP → LIPS (leveringen, verwijzend naar VBAK/VBAP)
-- 4. VBRK → VBRP → VFKN → VFKP (facturen, verwijzend naar LIKP)
-- 5. VBFA (document flow, verwijzend naar VBAK, LIKP, VBRK)
-- 6. EKKO → EKPO → EKET → EKBE (inkoop)
-- 7. EBAN, EINA, EINE (requisities, info records)
-- 8. BKPF → BSEG (boekhouding, verwijzend naar VBRK, RBKP)
-- 9. BSID, BSAD, BSIK, BSAK, BSAS (subledger)
-- 10. FAGLFLEXA (new GL)
-- 11. RBKP → RSEG (inkoopfacturen, verwijzend naar EKKO/EKPO)
-- 12. AFKO → AFPO → AFVC → AFVV (productie)
-- 13. PLKO → PLPO, STKO → STPO, MAST, MAPL (routings/BOMs)
-- 14. PLAF, RESB (planning)
-- 15. MKPF → MSEG (materiaalbewegingen)
-- 16. LTAK → LTAP, LTBK → LTBP, LQUA, LEIN, RLGRAP (WM)
-- 17. COBK → COEP, COSP, COSS (CO)
-- 18. CE1XXXX, CE2XXXX (CO-PA)
-- 19. KEKO → KEPH, MLCD (product costing)
-- 20. ANEP (asset postings)
-- 21. CDHDR → CDPOS (change documents)
-- 22. JEST (status records)
-- 23. QMEL (quality notifications)
-- 24. SER01, OBJK (serialnummers)
-- 25. PA0000-PA2006 (HR)
-- 26. PBED, PBIM (demand)
-- 27. MDKP, MDTB (MRP)
-- 28. BALHDR, BALDAT (application log)
-- 29. EDIDC, EDID4 (IDocs)
-- 30. BDCP2 (change pointers)
-- 31. INFO
```

### Stap 4: Data Generatie Regels

#### Nummerbereiken
| Object | Format | Voorbeeld |
|--------|--------|-----------|
| Sales Order (VBELN) | 10-cijferig, start 0000000001 | 0000000001 - 0000100000 |
| Delivery (VBELN) | 10-cijferig, start 0080000001 | 0080000001 - 0080080000 |
| Billing Doc (VBELN) | 10-cijferig, start 0090000001 | 0090000001 - 0090075000 |
| Purchase Order (EBELN) | 10-cijferig, start 4500000001 | 4500000001 - 4500020000 |
| Material Doc (MBLNR) | 10-cijferig, start 5000000001 | 5000000001 - 5000050000 |
| Accounting Doc (BELNR) | 10-cijferig, start 0100000001 | 0100000001 - 0100200000 |
| Internal Order (AUFNR) | 12-cijferig, start 000000000001 | 000000000001 - 000000025000 |
| Customer (KUNNR) | 10-cijferig, start 0000000001 | 0000000001 - 0000010000 |
| Vendor (LIFNR) | 10-cijferig, start 0000000001 | 0000000001 - 0000002000 |
| Material (MATNR) | 18-karakter, start MAT000001 | MAT000001 - MAT005000 |
| Cost Center (KOSTL) | 10-cijferig, start 0000000001 | 0000000001 - 0000000500 |
| Personnel Nr (PERNR) | 8-cijferig, start 00000001 | 00000001 - 00003000 |

#### Datumbereiken
- Orders: 2023-01-01 tot 2024-12-31 (2 jaar)
- Leveringen: order datum + 1-14 dagen
- Facturen: levering datum + 1-7 dagen
- FI boekingen: factuur datum + 0-3 dagen

#### Mandant
- Alle records: MANDT = '100'

#### Valuta & Eenheden
- Primaire valuta: EUR (60%), USD (25%), GBP (10%), CHF (5%)
- Gewichtseenheid: KG (70%), G (20%), TO (10%)
- Volume-eenheid: L (60%), M3 (40%)
- Basiseenheid: ST (stuk, 50%), KG (20%), L (15%), M (10%), M2 (5%)

#### Bedragen
- Order items: EUR 10 - EUR 50.000 (realistische verdeling)
- Facturen: som van geleverde items
- Inkooporders: EUR 50 - EUR 200.000
- Salarissen: EUR 2.000 - EUR 15.000 maandelijks

#### Status Verdeling
- Orders: 60% volledig verwerkt, 25% deels verwerkt, 15% open
- Leveringen: 80% van orders hebben leveringen
- Facturen: 75% van orders zijn gefactureerd

### Stap 5: SQL Generator Methode

Gebruik Snowflake `GENERATOR` en `UNIFORM`/`RANDOM` functies:

```sql
-- Voorbeeld: Genereer KNA1 (klanten)
INSERT INTO SAP.SAP_ECC.KNA1 (MANDT, KUNNR, LAND1, NAME1, ORT01, PSTLZ, SORTL, SPRAS)
SELECT 
    '100' AS MANDT,
    LPAD(SEQ4()::VARCHAR, 10, '0') AS KUNNR,
    CASE UNIFORM(1, 5, RANDOM()) 
        WHEN 1 THEN 'DE' WHEN 2 THEN 'NL' WHEN 3 THEN 'US' 
        WHEN 4 THEN 'GB' ELSE 'FR' END AS LAND1,
    'Customer ' || SEQ4()::VARCHAR AS NAME1,
    CASE UNIFORM(1, 10, RANDOM())
        WHEN 1 THEN 'Berlin' WHEN 2 THEN 'Amsterdam' WHEN 3 THEN 'New York'
        WHEN 4 THEN 'London' WHEN 5 THEN 'Paris' WHEN 6 THEN 'Munich'
        WHEN 7 THEN 'Rotterdam' WHEN 8 THEN 'Frankfurt' WHEN 9 THEN 'Hamburg'
        ELSE 'Brussels' END AS ORT01,
    LPAD(UNIFORM(10000, 99999, RANDOM())::VARCHAR, 5, '0') AS PSTLZ,
    'CUST' || LPAD(SEQ4()::VARCHAR, 6, '0') AS SORTL,
    'E' AS SPRAS
FROM TABLE(GENERATOR(ROWCOUNT => 10000));

-- Voorbeeld: Genereer VBAK (sales orders) met FK naar KNA1
INSERT INTO SAP.SAP_ECC.VBAK (MANDT, VBELN, ERDAT, ERZET, ERNAM, AUART, VKORG, VTWEG, SPART, KUNNR)
SELECT
    '100' AS MANDT,
    LPAD(SEQ4()::VARCHAR, 10, '0') AS VBELN,
    DATEADD(DAY, UNIFORM(0, 730, RANDOM()), '2023-01-01'::DATE) AS ERDAT,
    LPAD(UNIFORM(0, 23, RANDOM())::VARCHAR, 2, '0') || ':' || 
        LPAD(UNIFORM(0, 59, RANDOM())::VARCHAR, 2, '0') || ':00' AS ERZET,
    'USER' || LPAD(UNIFORM(1, 500, RANDOM())::VARCHAR, 3, '0') AS ERNAM,
    CASE UNIFORM(1, 4, RANDOM()) 
        WHEN 1 THEN 'TA' WHEN 2 THEN 'SO' WHEN 3 THEN 'RE' ELSE 'KA' END AS AUART,
    CASE UNIFORM(1, 3, RANDOM()) 
        WHEN 1 THEN '1000' WHEN 2 THEN '2000' ELSE '3000' END AS VKORG,
    CASE UNIFORM(1, 2, RANDOM()) WHEN 1 THEN '10' ELSE '20' END AS VTWEG,
    CASE UNIFORM(1, 3, RANDOM()) WHEN 1 THEN '10' WHEN 2 THEN '20' ELSE '30' END AS SPART,
    -- FK naar KNA1: gebruik bestaande klantnummers
    LPAD(UNIFORM(1, 10000, RANDOM())::VARCHAR, 10, '0') AS KUNNR
FROM TABLE(GENERATOR(ROWCOUNT => 100000));

-- Voorbeeld: Genereer VBAP (sales order items) met FK naar VBAK en MARA
INSERT INTO SAP.SAP_ECC.VBAP (MANDT, VBELN, POSNR, MATNR, MATKL, NETWR, WAERK, KWMENG, MEINS)
SELECT
    '100' AS MANDT,
    LPAD(order_nr::VARCHAR, 10, '0') AS VBELN,
    LPAD((item_seq * 10)::VARCHAR, 6, '0') AS POSNR,
    'MAT' || LPAD(UNIFORM(1, 5000, RANDOM())::VARCHAR, 6, '0') AS MATNR,
    'MK' || LPAD(UNIFORM(1, 50, RANDOM())::VARCHAR, 3, '0') AS MATKL,
    ROUND(UNIFORM(10, 50000, RANDOM())::NUMERIC(15,2) + UNIFORM(0, 99, RANDOM()) / 100.0, 2) AS NETWR,
    CASE UNIFORM(1, 4, RANDOM()) 
        WHEN 1 THEN 'EUR' WHEN 2 THEN 'USD' WHEN 3 THEN 'GBP' ELSE 'CHF' END AS WAERK,
    UNIFORM(1, 1000, RANDOM())::NUMERIC(13,3) AS KWMENG,
    CASE UNIFORM(1, 5, RANDOM()) 
        WHEN 1 THEN 'ST' WHEN 2 THEN 'KG' WHEN 3 THEN 'L' 
        WHEN 4 THEN 'M' ELSE 'M2' END AS MEINS
FROM (
    SELECT 
        CEIL(SEQ4() / 3.0)::INT AS order_nr,
        MOD(SEQ4() - 1, 3) + 1 AS item_seq
    FROM TABLE(GENERATOR(ROWCOUNT => 300000))
) items
WHERE order_nr <= 100000;
```

### Stap 6: Validatie

Na het genereren, valideer referentiële integriteit:

```sql
-- Check: alle VBAP.VBELN bestaan in VBAK
SELECT COUNT(*) AS orphan_items 
FROM SAP.SAP_ECC.VBAP a 
LEFT JOIN SAP.SAP_ECC.VBAK b ON a.VBELN = b.VBELN AND a.MANDT = b.MANDT
WHERE b.VBELN IS NULL;

-- Check: alle VBAP.MATNR bestaan in MARA
SELECT COUNT(*) AS orphan_materials
FROM SAP.SAP_ECC.VBAP a 
LEFT JOIN SAP.SAP_ECC.MARA b ON a.MATNR = b.MATNR AND a.MANDT = b.MANDT
WHERE b.MATNR IS NULL;

-- Check: alle LIPS.VBELN bestaan in LIKP
SELECT COUNT(*) AS orphan_delivery_items
FROM SAP.SAP_ECC.LIPS a 
LEFT JOIN SAP.SAP_ECC.LIKP b ON a.VBELN = b.VBELN AND a.MANDT = b.MANDT
WHERE b.VBELN IS NULL;

-- Check: alle EKPO.EBELN bestaan in EKKO
SELECT COUNT(*) AS orphan_po_items
FROM SAP.SAP_ECC.EKPO a 
LEFT JOIN SAP.SAP_ECC.EKKO b ON a.EBELN = b.EBELN AND a.MANDT = b.MANDT
WHERE b.EBELN IS NULL;

-- Generieke check voor alle header-item relaties
-- Verwacht resultaat: 0 orphans voor elke check
```

## Beperkingen & Aannames

1. **Mandant**: Altijd '100' (single client)
2. **Taal**: Primair 'E' (Engels) voor tekstvelden, 'D' (Duits) als secondary
3. **Company Code**: '1000' als primair, '2000' als secondary
4. **Controlling Area**: '1000'
5. **Plant codes**: '1000' t/m '1009' (10 plants)
6. **Fiscaal jaar**: Kalendermaand (januari=001, etc.)
7. **Geen echte namen**: Gebruik gegenereerde patronen (Customer 1, Vendor 1, etc.)
8. **Bedragen**: Realistic ranges maar geen exact kloppende totalen tussen sub/header (simplificatie)
