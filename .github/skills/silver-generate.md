---
name: silver-generate
description: Genereer dbt silver business modellen voor SAP ECC-tabellen met business-namen uit de data dictionary en beschrijvingen uit text-tabellen.
---

# Skill: SAP ECC naar dbt silver business model

## Doel
Maak voor elke SAP-tabel uit de bronze laag een business-model in de silver laag dat:
- Technische SAP-kolomnamen vertaalt naar leesbare business-namen op basis van de SAP Data Dictionary (DD03T)
- Tabelnamen vertaalt naar leesbare business-namen op basis van de SAP Data Dictionary (DD02T)
- Codevelden verrijkt met beschrijvingen uit bijbehorende text-tabellen (bijv. TVAKT voor VBAK.AUART, MAKT voor MARA.MATNR, T156T voor MSEG.BWART)
- Alleen actieve records selecteert (is_current = true) uit de bronze SCD2-laag
- Het MANDT (client) veld uitsluit omdat dit geen business-waarde heeft

## Gebruik
Gebruik deze skill wanneer je een nieuwe SAP ECC-tabel wilt transformeren naar een business-model in de silver laag. De skill vertaalt technische SAP-namen naar begrijpelijke business-namen en voegt beschrijvende teksten toe.

## Bronnen voor naamgeving en beschrijvingen

### Tabelnamen (DD02T)
Bestand: `sap/dd/DD02T.csv`
Formaat: TABNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DDTEXT
Gebruik DDTEXT als basis voor de business-modelnaam (Engels, DDLANGUAGE = 'E').

### Kolomnamen (DD03T)
Bestand: `sap/dd/DD03T.csv`
Formaat: TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DDTEXT
Gebruik DDTEXT als basis voor de business-kolomnaam (Engels). Vertaal de DDTEXT naar een geldige snake_case kolomnaam.

### Kolomdefinities (DD03L)
Bestand: `sap/dd/DD03L.csv`
Formaat: TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, POSITION, KEYFLAG, DATATYPE, LENG, DECIMALS, DOMNAME, ROLLNAME, NOTNULL, REFTABLE, REFFIELD
Gebruik KEYFLAG='X' om de primaire sleutel te bepalen.

### Text-tabellen voor codevelden
SAP kent text-tabellen die beschrijvingen bevatten bij codes. Veelgebruikte patronen:
- MAKT: beschrijving (MAKTX) bij materiaal (MATNR), gefilterd op SPRAS = 'E'
- TVAKT: beschrijving (BEZEI) bij verkoopordertype (AUART), gefilterd op SPRAS = 'E'
- TVAPT: beschrijving bij itemcategorie (PSTYV), gefilterd op SPRAS = 'E'
- TVLKT: beschrijving bij leveringstype (LFART), gefilterd op SPRAS = 'E'
- TTDST: beschrijving bij verzendingstype (VSART), gefilterd op SPRAS = 'E'
- T161T: beschrijving bij inkooptype (BSART), gefilterd op SPRAS = 'E'
- T156T: beschrijving bij bewegingstype (BWART), gefilterd op SPRAS = 'E'
- TJ02T: beschrijving bij systeemstatus (ISTAT), gefilterd op SPRAS = 'E'
- CSKT: beschrijving bij kostenplaats (KOSTL), gefilterd op SPRAS = 'E'
- CSKU: beschrijving bij kostenelement (KSTAR), gefilterd op SPRAS = 'E'
- CRTX: beschrijving bij werkplaats (ARBID), gefilterd op SPRAS = 'E'
- T527X: beschrijving bij organisatie-eenheid (ORGEH), gefilterd op SPRSL = 'E'
- T001W: plantnaam (NAME1) bij plant (WERKS)

## Regels

1. **Modelnaam**: Gebruik de business-naam uit DD02T als basis. Vertaal naar snake_case meervoud.
   Voorbeeld: VBAK (Sales document: header data) → `sales_orders`

2. **Bestandsnaam en locatie**: `dbt/models/silver/<model_naam>.sql`

3. **Configuratie**:
   ```sql
   {{ config(
       materialized='table',
       alias='<BUSINESS_NAME_UPPERCASE>',
       database='DWH',
       schema='SILVER',
       tags=['sap', 'silver', '<categorie>']
   ) }}
   ```
   Categorieën: master_data, transactional, organizational, reference

4. **Kolomnamen**: Vertaal elke SAP-kolomnaam naar een leesbare snake_case business-naam op basis van DD03T DDTEXT.
   Voorbeelden:
   - VBELN → sales_order_number (uit "Sales Document")
   - AUART → order_type (uit "Sales Document Type")
   - KUNNR → customer_number (uit "Customer Number")
   - MATNR → material_number (uit "Material Number")
   - ERDAT → created_date (uit "Created on")
   - NETWR → net_value (uit "Net Value")

5. **Sluit MANDT altijd uit**: Het client-veld heeft geen business-waarde.

6. **Codevelden verrijken**: Wanneer een kolom een code bevat waarvoor een text-tabel beschikbaar is, voeg dan een LEFT JOIN toe om de beschrijving op te halen. Neem de beschrijving op als extra kolom met suffix `_description`.
   ```sql
   -- Voorbeeld: order_type verrijkt met order_type_description uit TVAKT
   left join {{ ref('htecc_tvakt') }} t_auart
       on s.auart = t_auart.auart
       and t_auart.spras = 'E'
   ```

7. **Bron**: Gebruik altijd `{{ ref('htecc_<tabel>') }}` om naar bronze-modellen te verwijzen. Gebruik NOOIT `{{ source() }}`. Filter altijd op `is_current = true` voor zowel de hoofdtabel als text-tabellen (alle bronze-tabellen zijn SCD2).

8. **Schema definitie**: Voeg het model toe aan `dbt/models/silver/schema.yml` met:
   - Modelnaam en beschrijving (uit DD02T DDTEXT + bronvermelding)
   - Kolombeschrijvingen inclusief SAP-veldnaam referentie
   - Tests op primaire sleutel kolommen: not_null en unique

9. **Sleutel- en masterdata-vertalingen (code → omschrijving)**: Voeg voor elk codeveld dat verwijst naar masterdata een LEFT JOIN toe naar de relevante master- of text-tabel. De beschrijving wordt opgenomen als `<veldnaam>_description`. Veelgebruikte vertalingen:
   - Cost center (KOSTL) → CSKT.KTEXT (kostenplaatsnaam)
   - GL account / cost element (SAKNR/HKONT/KSTAR) → SKAT.TXT50 of CSKU.KTEXT
   - Customer (KUNNR) → KNA1.NAME1 (klantnaam)
   - Vendor (LIFNR) → LFA1.NAME1 (leveranciersnaam)
   - Material (MATNR) → MAKT.MAKTX (materiaalomschrijving)
   - Profit center (PRCTR) → CEPCT.KTEXT (profit center naam)
   - Company code (BUKRS) → T001.BUTXT (bedrijfsnaam)
   - Plant (WERKS) → T001W.NAME1 (plantnaam)
   - Storage location (LGORT) → T001L.LGOBE (opslaglocatienaam)

   ```sql
   -- Voorbeeld: cost center verrijkt met cost_center_name uit CSKT
   left join {{ ref('htecc_cskt') }} t_kostl
       on s.kostl = t_kostl.kostl
       and s.kokrs = t_kostl.kokrs
       and t_kostl.spras = 'E'
       and t_kostl.is_current = true
   ```

10. **Tekenlogica en amount/quantity-transformaties**: SAP slaat bedragen op met een Haben/Soll (H/S) indicator. Pas de juiste tekenlogica toe zodat bedragen in de silver laag het correcte business-teken hebben.

    **Debet/Credit-omzetting (BSEG, COEP, FAGLFLEXA)**:
    - Wanneer SHKZG = 'H' (Haben/Credit): vermenigvuldig het bedrag met -1
    - Wanneer SHKZG = 'S' (Soll/Debit): behoud het positieve teken
    ```sql
    case
        when s.shkzg = 'H' then s.dmbtr * -1
        else s.dmbtr
    end as amount_in_local_currency
    ```

    **Amount-velden met correct teken (BSEG)**:
    - WRBTR (transaction currency amount) en DMBTR (local currency amount) zijn altijd positief opgeslagen
    - Gebruik SHKZG om het juiste teken te bepalen
    - Voor saldo-berekeningen: debet is positief, credit is negatief

    **Quantities (MSEG, LIPS)**:
    - Bij movement types die uitgaand zijn (bijv. 261, 601): quantity is negatief
    - Bij movement types die inkomend zijn (bijv. 101, 501): quantity is positief
    - SAP veld MENGE bevat altijd de absolute waarde; gebruik het teken uit het SHKZG-veld of leid het af uit het movement type
    ```sql
    case
        when s.shkzg = 'H' then s.menge * -1
        else s.menge
    end as quantity
    ```

11. **Tijdsafleidingen**: Leid standaard tijdsdimensies af uit SAP-datumvelden (ERDAT, BUDAT, CPUDT, etc.). Voeg deze als berekende kolommen toe aan het model.

    **Fiscal period en fiscal year (uit BUDAT of MONAT/GJAHR)**:
    - Gebruik de SAP-velden MONAT (fiscal period) en GJAHR (fiscal year) wanneer beschikbaar in de brontabel
    - Wanneer alleen BUDAT (posting date) beschikbaar is, leid fiscal period af via de fiscal year variant (T009/T009B) of gebruik een macro
    ```sql
    s.gjahr as fiscal_year,
    s.monat as fiscal_period,
    s.gjahr || '-' || lpad(s.monat, 2, '0') as fiscal_year_period
    ```

    **Kalenderafleidingen uit datumvelden**:
    ```sql
    s.budat as posting_date,
    year(s.budat) as posting_year,
    month(s.budat) as posting_month,
    quarter(s.budat) as posting_quarter,
    weekofyear(s.budat) as posting_week,
    to_char(s.budat, 'YYYY-MM') as posting_year_month,
    to_char(s.budat, 'YYYY-"Q"Q') as posting_year_quarter
    ```

    **Standaard datumvelden en hun afgeleide kolommen**:
    - ERDAT (aanmaakdatum) → created_date, created_year, created_month
    - BUDAT (boekingsdatum) → posting_date, posting_year, posting_month, posting_quarter, posting_week, fiscal_year, fiscal_period
    - CPUDT (invoerdatum) → entry_date
    - AEDAT (wijzigingsdatum) → changed_date
    - WADAT (geplande leveringsdatum) → planned_delivery_date
    - FKDAT (factureringsdatum) → billing_date, billing_year, billing_month

12. **Eenheden en valuta-conversies**: Wanneer bedragen in lokale valuta (bijv. DMBTR) ook in groepsvaluta beschikbaar moeten zijn, pas valuta-conversie toe.

    **Local currency naar group currency**:
    - Gebruik SAP-wisselkoerstabel TCURR voor de conversie
    - Filter op exchange rate type (KURST): 'M' = standaard gemiddelde koers, 'B' = boekhoudkundige koers
    - Pas de koers toe op de reporting date (BUDAT of ultimo-datum)
    ```sql
    -- Voorbeeld: valuta-conversie via TCURR
    left join {{ ref('htecc_tcurr') }} fx
        on fx.fcurr = s.waers           -- broncurrency (lokaal)
        and fx.tcurr = 'EUR'            -- doelcurrency (groep)
        and fx.kurst = 'M'              -- exchange rate type (M = average)
        and s.budat between fx.gdatu_from and fx.gdatu_to  -- geldigheidsperiode
        and fx.is_current = true
    ```
    ```sql
    s.dmbtr as amount_local_currency,
    s.waers as local_currency,
    s.dmbtr * fx.ukurs as amount_group_currency,
    'EUR' as group_currency,
    fx.ukurs as exchange_rate
    ```

    **Unit of measure conversies**:
    - Gebruik MARM (Material Units of Measure) voor conversie tussen eenheden
    - Basismaateenheid (MEINS uit MARA) is de standaard; andere eenheden worden geconverteerd via MARM.UMREZ/MARM.UMREN
    ```sql
    -- Voorbeeld: quantity conversie naar basiseenheid
    left join {{ ref('htecc_marm') }} uom
        on uom.matnr = s.matnr
        and uom.meinh = s.vrkme      -- verkoopmaateenheid
        and uom.is_current = true
    ```
    ```sql
    s.kwmeng as quantity_sales_unit,
    s.vrkme as sales_unit,
    s.kwmeng * (uom.umrez / nullif(uom.umren, 0)) as quantity_base_unit,
    m.meins as base_unit
    ```

    **Standaard currency/UoM-velden**:
    - WAERS / WAERK: transactievaluta (document currency)
    - HWAER: lokale valuta (local/company code currency)
    - HWAE2 / KWAER: groepsvaluta (group currency, second local currency)
    - MEINS: basismaateenheid
    - VRKME: verkoopmaateenheid
    - BSTME: bestellingseenheid

13. **Hiërarchieën**: SAP-hiërarchieën (cost center, profit center, GL account, product) worden opgeslagen in SET-tabellen (SETHEADER, SETNODE, SETLEAF) of specifieke hiërarchietabellen. Verrijk entiteiten met hun hiërarchieniveaus.

    **Cost center hierarchy (CSKS → SETHEADER/SETNODE/SETLEAF of CCSS)**:
    - Voeg hiërarchieniveaus toe als kolommen: cost_center_group_level1, cost_center_group_level2, etc.
    - Gebruik de standaard hiërarchie (SET CLASS = '0101', SUBCLASS = controlling area)
    ```sql
    -- Voorbeeld: cost center hiërarchie via SETLEAF/SETNODE
    left join {{ ref('htecc_setleaf') }} leaf
        on leaf.setclass = '0101'
        and leaf.subclass = s.kokrs
        and s.kostl between leaf.vatefrom and leaf.vateto
        and leaf.is_current = true
    left join {{ ref('htecc_setnode') }} node
        on node.setclass = '0101'
        and node.subclass = s.kokrs
        and node.setname = leaf.setname
        and node.is_current = true
    ```

    **Profit center hierarchy (CEPC → SETHEADER/SETNODE/SETLEAF)**:
    - SET CLASS = '0106'
    - Voeg profit_center_group_level1, profit_center_group_level2 toe

    **GL account hierarchy (SKA1 → SETHEADER/SETNODE/SETLEAF of FSV via FAGL_011ZC)**:
    - SET CLASS = '0106' of gebruik de Financial Statement Version (FSV) tabellen
    - Voeg gl_account_group_level1, gl_account_group_level2, gl_account_group_level3 toe
    - FSV-tabellen: FAGL_011ZC (toewijzing), FAGL_011PC (hiërarchiestructuur), FAGL_011QT (teksten)

    **Product hierarchy (MARA.PRDHA)**:
    - Het veld PRDHA bevat de volledige hiërarchie als gecodeerde string (bijv. '00100200030')
    - Splits op basis van niveaulengte (standaard: 5-5-5 of configurable via T179)
    ```sql
    substring(s.prdha, 1, 5) as product_hierarchy_level1,
    substring(s.prdha, 1, 10) as product_hierarchy_level2,
    s.prdha as product_hierarchy_level3
    ```
    - Verrijk elk niveau met beschrijving uit T179T (gefilterd op SPRAS = 'E')

14. **Document type / posting key interpretatie**: Vertaal SAP document types en posting keys naar leesbare business-categorieën.

    **Document types (BLART → T003T)**:
    - Voeg document_type_description toe via T003T (gefilterd op SPRAS = 'E')
    - Veelgebruikte document types en hun business-betekenis:
      - RE = Invoice (inkoopfactuur)
      - RN = Credit memo (inkoopkrediet)
      - SA = G/L account posting
      - DR = Customer invoice
      - DG = Customer credit memo
      - KR = Vendor invoice
      - KG = Vendor credit memo
      - WE = Goods receipt
      - WA = Goods issue
    ```sql
    left join {{ ref('htecc_t003t') }} t_blart
        on t_blart.blart = s.blart
        and t_blart.spras = 'E'
        and t_blart.is_current = true
    ```

    **Posting keys (BSCHL → T074T)**:
    - Voeg posting_key_description toe via T074T (gefilterd op SPRAS = 'E')
    - Leid debet/credit indicator af uit de posting key:
      - Posting keys 01-39: Debet
      - Posting keys 40-99: Credit (behalve uitzonderingen)
    - Leid account type af:
      - 01/11/21/31 = Customer (D)
      - 40/50 = G/L account (S)
      - 21/31 = Vendor (K)
      - 70/75 = Asset (A)
    ```sql
    s.bschl as posting_key,
    t_bschl.bschl_text as posting_key_description,
    case
        when s.bschl between '01' and '39' then 'DEBIT'
        else 'CREDIT'
    end as debit_credit_indicator,
    case
        when s.bschl in ('01','02','03','04','05','06','07','08','09','11','12','13','14','15','16','17','18','19') then 'CUSTOMER'
        when s.bschl in ('21','22','23','24','25','26','27','28','29','31','32','33','34','35','36','37','38','39') then 'VENDOR'
        when s.bschl in ('40','50') then 'GL_ACCOUNT'
        when s.bschl in ('70','75') then 'ASSET'
        else 'OTHER'
    end as account_type
    ```

    **Movement types (BWART → T156T)**:
    - Voeg movement_type_description toe via T156T
    - Leid de business-categorie af:
      - 101 = Goods receipt from purchase order
      - 103 = Goods receipt into GR blocked stock
      - 201 = Goods issue for cost center
      - 261 = Goods issue for production order
      - 301 = Transfer posting plant to plant
      - 501 = Goods receipt without purchase order
      - 601 = Goods issue for delivery
    - Leid de richting af:
    ```sql
    case
        when s.bwart in ('101','103','105','501','503','505','511','521','531','541','551','561','571','581','591') then 'INBOUND'
        when s.bwart in ('201','221','231','241','251','261','281','291','301','311','601','621','631','641','651','661','671','681','691') then 'OUTBOUND'
        when s.bwart in ('301','303','305','311','313','315','321','323','325','341','343','345','349','351','411','412','413') then 'TRANSFER'
        else 'OTHER'
    end as movement_direction
    ```

    **Value types (WRTTP in CO-tabellen, bijv. COEP)**:
    - 04 = Actual
    - 10 = Plan (versie 0)
    - 11 = Plan (andere versie)
    - Voeg value_type_description toe:
    ```sql
    case
        when s.wrttp = '04' then 'Actual'
        when s.wrttp = '10' then 'Plan'
        when s.wrttp = '11' then 'Plan (alternative version)'
        else 'Other'
    end as value_type_description
    ```

## Template

```sql
{{ config(
    materialized='table',
    alias='<ALIAS>',
    database='DWH',
    schema='SILVER',
    tags=['sap', 'silver', '<categorie>']
) }}

with source as (
    select
        <kolom_sap> as <kolom_business>,
        ...
    from {{ ref('htecc_<tabel>') }}
    where is_current = true
),

<text_tabel_naam>_texts as (
    select
        <join_key>,
        <text_veld> as <beschrijving_naam>
    from {{ ref('htecc_<text_tabel>') }}
    where spras = 'E'
      and is_current = true
)

select
    s.<kolom_business>,
    t.<beschrijving_naam>,
    ...
from source s
left join <text_tabel_naam>_texts t
    on s.<join_kolom> = t.<join_key>
```

## schema.yml template

```yaml
  - name: <model_naam>
    description: >
      Silver business model for SAP <entity> (source: <SAP_TABEL>).
      <Aanvullende beschrijving>.
    columns:
      - name: <kolom_business>
        description: "<DD03T DDTEXT> (SAP field <FIELDNAME>)."
        tests:
          - not_null  # alleen voor key-kolommen
          - unique    # alleen voor key-kolommen
```

## Voorbeeld output: sales_orders

Gebaseerd op:
- DD02T: VBAK = "Sales document: header data"
- DD03T: VBELN = "Sales Document", AUART = "Sales Document Type", etc.
- Text-tabel: TVAKT bevat beschrijvingen bij AUART

```sql
{{ config(
    materialized='table',
    alias='SALES_ORDERS',
    database='DWH',
    schema='SILVER',
    tags=['sap', 'silver', 'transactional']
) }}

with source as (
    select
        v.vbeln as sales_order_number,
        v.auart as order_type,
        v.vkorg as sales_organization,
        v.vtweg as distribution_channel,
        v.spart as division,
        v.kunnr as customer_number,
        v.erdat as created_date,
        v.netwr as net_value,
        v.waerk as currency
    from {{ ref('htecc_vbak') }} v
    where v.is_current = true
),

order_type_texts as (
    select
        auart,
        bezei as order_type_description
    from {{ ref('htecc_tvakt') }}
    where spras = 'E'
      and is_current = true
)

select
    s.sales_order_number,
    s.order_type,
    t.order_type_description,
    s.sales_organization,
    s.distribution_channel,
    s.division,
    s.customer_number,
    s.created_date,
    s.net_value,
    s.currency
from source s
left join order_type_texts t
    on s.order_type = t.auart
```

## Welke silver modellen te genereren

Focus op de kernentiteiten van een SAP-omgeving:
- **Master data**: customers (KNA1), vendors (LFA1), materials (MARA+MAKT), plants (T001W), cost_centers (CSKS+CSKT)
- **Transactional SD**: sales_orders (VBAK+TVAKT), sales_order_items (VBAP), deliveries (LIKP+TVLKT), delivery_items (LIPS), billing_documents (VBRK), billing_items (VBRP)
- **Transactional MM**: purchase_orders (EKKO+T161T), purchase_order_items (EKPO), material_documents (MSEG+T156T)
- **Transactional PP**: production_orders (AFKO), production_order_items (AFPO), production_operations (AFVC)
- **Transactional FI**: accounting_documents (BKPF), accounting_line_items (BSEG)
- **Transactional CO**: cost_postings (COEP+CSKU)

## Output die deze skill moet leveren
Per tabel:
1. Een dbt-modelbestand in `dbt/models/silver/`
2. Een entry in `dbt/models/silver/schema.yml`
3. Een doeltabel in DWH.SILVER met een business-naam als alias
