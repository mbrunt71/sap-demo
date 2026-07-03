-- ============================================================
-- BUSINESS ANALYSES VOOR KOEKJESFABRIKANT
-- Gebaseerd op dimensioneel model in DEMO.GOLD_DIMENSIONAL
-- ============================================================

-- ============================================================
-- 1. OMZET PER PRODUCTGROEP (TOP 10 KOEKJESSOORTEN)
-- Welke koekjestypen genereren de meeste omzet?
-- ============================================================
SELECT
    COALESCE(m."Material Group", 'Onbekend') AS MATERIAL_GROUP,
    COALESCE(m."Material Description", b."Material Number") AS MATERIAL_DESCRIPTION,
    COUNT(DISTINCT b."Billing Document Number") AS AANTAL_FACTUREN,
    SUM(b."Billed Quantity") AS TOTAAL_VERKOCHT,
    SUM(b."Net Value") AS TOTALE_OMZET,
    ROUND(SUM(b."Net Value") / NULLIF(SUM(b."Billed Quantity"), 0), 2) AS GEMIDDELDE_PRIJS_PER_EENHEID
FROM DEMO.GOLD_DIMENSIONAL."Fact Billing Document Item" b
LEFT JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON b."Material Number" = m."Material Number"
GROUP BY COALESCE(m."Material Group", 'Onbekend'), COALESCE(m."Material Description", b."Material Number")
ORDER BY TOTALE_OMZET DESC
LIMIT 10;

-- ============================================================
-- 2. KLANT-ABC ANALYSE (PARETO)
-- Welke klanten zijn verantwoordelijk voor 80% van de omzet?
-- ============================================================
SELECT
    c."Customer Number",
    c."Customer Name",
    c."Country",
    SUM(b."Net Value") AS KLANT_OMZET,
    SUM(SUM(b."Net Value")) OVER () AS TOTALE_OMZET,
    ROUND(SUM(b."Net Value") / NULLIF(SUM(SUM(b."Net Value")) OVER (), 0) * 100, 2) AS OMZET_PERCENTAGE,
    SUM(SUM(b."Net Value")) OVER (ORDER BY SUM(b."Net Value") DESC) /
        NULLIF(SUM(SUM(b."Net Value")) OVER (), 0) * 100 AS CUMULATIEF_PERCENTAGE,
    CASE
        WHEN SUM(SUM(b."Net Value")) OVER (ORDER BY SUM(b."Net Value") DESC) /
             NULLIF(SUM(SUM(b."Net Value")) OVER (), 0) <= 0.80 THEN 'A'
        WHEN SUM(SUM(b."Net Value")) OVER (ORDER BY SUM(b."Net Value") DESC) /
             NULLIF(SUM(SUM(b."Net Value")) OVER (), 0) <= 0.95 THEN 'B'
        ELSE 'C'
    END AS ABC_KLASSE
FROM DEMO.GOLD_DIMENSIONAL."Fact Billing Document" bd
JOIN DEMO.GOLD_DIMENSIONAL."Fact Billing Document Item" b
    ON bd."Billing Document Number" = b."Billing Document Number"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Customer" c
    ON bd."Payer Customer" = c."Customer Number"
GROUP BY c."Customer Number", c."Customer Name", c."Country"
ORDER BY KLANT_OMZET DESC;

-- ============================================================
-- 3. SEIZOENSPATROON VERKOOP PER MAAND
-- Welke maanden zijn piek- en dalmaanden voor koekjesverkoop?
-- ============================================================
SELECT
    DATE_TRUNC('MONTH', TRY_TO_DATE(so."Order Date", 'YYYY-MM-DD')) AS MAAND,
    m."Material Group" AS PRODUCTGROEP,
    COUNT(DISTINCT so."Sales Order Number") AS AANTAL_ORDERS,
    SUM(soi."Order Quantity") AS TOTALE_HOEVEELHEID,
    SUM(soi."Net Value") AS TOTALE_ORDERWAARDE
FROM DEMO.GOLD_DIMENSIONAL."Fact Sales Order" so
JOIN DEMO.GOLD_DIMENSIONAL."Fact Sales Order Item" soi
    ON so."Sales Order Number" = soi."Sales Order Number"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON soi."Material Number" = m."Material Number"
GROUP BY MAAND, PRODUCTGROEP
ORDER BY MAAND, TOTALE_ORDERWAARDE DESC;

-- ============================================================
-- 4. LEVERANCIERSPRESTATIE (INKOOPANALYSE GRONDSTOFFEN)
-- Welke leveranciers leveren het meest en tegen welke prijs?
-- ============================================================
SELECT
    v.VENDOR_NAME,
    v.COUNTRY,
    m."Material Group",
    COUNT(DISTINCT po.PURCHASE_ORDER_NUMBER) AS AANTAL_BESTELLINGEN,
    SUM(po.ORDER_QUANTITY) AS BESTELDE_HOEVEELHEID,
    SUM(po.NET_VALUE) AS TOTALE_INKOOPWAARDE,
    ROUND(SUM(po.NET_VALUE) / NULLIF(SUM(po.ORDER_QUANTITY), 0), 2) AS GEMIDDELDE_PRIJS
FROM DEMO.SILVER.PURCHASE_ORDER_ITEMS po
JOIN DEMO.SILVER.PURCHASE_ORDERS h
    ON po.PURCHASE_ORDER_NUMBER = h.PURCHASE_ORDER_NUMBER
JOIN DEMO.SILVER.VENDORS v
    ON h.VENDOR_NUMBER = v.VENDOR_NUMBER
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON po.MATERIAL_NUMBER = m."Material Number"
GROUP BY v.VENDOR_NAME, v.COUNTRY, m."Material Group"
ORDER BY TOTALE_INKOOPWAARDE DESC
LIMIT 20;

-- ============================================================
-- 5. PRODUCTIE-EFFICIENTIE PER FABRIEK
-- Hoeveel productieorders per plant en wat is de gemiddelde batchgrootte?
-- ============================================================
SELECT
    p."Plant Code",
    p."Plant Name",
    m."Material Group" AS PRODUCTGROEP,
    COUNT(DISTINCT po.ORDER_NUMBER) AS AANTAL_PRODUCTIEORDERS,
    SUM(po.ORDER_QUANTITY) AS TOTALE_PRODUCTIE_HOEVEELHEID,
    ROUND(AVG(po.ORDER_QUANTITY), 0) AS GEMIDDELDE_BATCHGROOTTE
FROM DEMO.SILVER.PRODUCTION_ORDER_ITEMS po
JOIN DEMO.GOLD_DIMENSIONAL."Dim Plant" p
    ON po.PLANT = p."Plant Code"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON po.MATERIAL_NUMBER = m."Material Number"
GROUP BY p."Plant Code", p."Plant Name", m."Material Group"
ORDER BY TOTALE_PRODUCTIE_HOEVEELHEID DESC;

-- ============================================================
-- 6. GRONDSTOFVERBRUIK PER KOEKJESRECEPT (BOM EXPLOSIE)
-- Hoeveel kg van elke grondstof is nodig per recept?
-- ============================================================
SELECT
    product."Material Description" AS KOEKJESTYPE,
    component."Material Description" AS GRONDSTOF,
    component."Material Group" AS GRONDSTOF_GROEP,
    bi.COMPONENT_QUANTITY,
    bi.COMPONENT_UNIT,
    bh.BASE_QUANTITY,
    bh.BASE_UNIT,
    ROUND(bi.COMPONENT_QUANTITY / NULLIF(bh.BASE_QUANTITY, 0), 4) AS VERBRUIK_PER_EENHEID
FROM DEMO.SILVER.BILL_OF_MATERIALS bh
JOIN DEMO.SILVER.BOM_ITEMS bi
    ON bh.BOM_NUMBER = bi.BOM_NUMBER
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" product
    ON bh.BOM_NUMBER = product."Material Number"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" component
    ON bi.COMPONENT_NUMBER = component."Material Number"
ORDER BY KOEKJESTYPE, VERBRUIK_PER_EENHEID DESC;

-- ============================================================
-- 7. VOORRAADANALYSE: SLOW MOVERS EN OVERSTOCK
-- Welke materialen hebben hoge voorraad maar lage omloopsnelheid?
-- ============================================================
SELECT
    w.MATERIAL_NUMBER,
    m."Material Description",
    m."Material Group",
    w.PLANT,
    SUM(w.AVAILABLE_QUANTITY) AS HUIDIGE_VOORRAAD,
    w.UNIT_OF_MEASURE,
    COALESCE(SUM(gm.QUANTITY), 0) AS VERBRUIK_AFGELOPEN_PERIODE,
    CASE
        WHEN COALESCE(SUM(gm.QUANTITY), 0) = 0 THEN 9999
        ELSE ROUND(SUM(w.AVAILABLE_QUANTITY) / NULLIF(SUM(gm.QUANTITY), 0) * 30, 1)
    END AS VOORRAADDAGEN
FROM DEMO.SILVER.WAREHOUSE_QUANTS w
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON w.MATERIAL_NUMBER = m."Material Number"
LEFT JOIN DEMO.SILVER.GOODS_MOVEMENTS gm
    ON w.MATERIAL_NUMBER = gm.MATERIAL_NUMBER
    AND w.PLANT = gm.PLANT
    AND gm.MOVEMENT_TYPE IN ('261', '201')
GROUP BY w.MATERIAL_NUMBER, m."Material Description", m."Material Group",
         w.PLANT, w.UNIT_OF_MEASURE
HAVING HUIDIGE_VOORRAAD > 0
ORDER BY VOORRAADDAGEN DESC
LIMIT 20;

-- ============================================================
-- 8. ORDER-TO-DELIVERY DOORLOOPTIJD
-- Hoe snel worden klantorders geleverd per plant?
-- ============================================================
SELECT
    p."Plant Code",
    p."Plant Name",
    m."Material Group" AS PRODUCTGROEP,
    COUNT(*) AS AANTAL_LEVERINGEN,
    SUM(di."Delivery Quantity") AS TOTAAL_GELEVERD,
    AVG(DATEDIFF('DAY',
        TRY_TO_DATE(so."Order Date", 'YYYY-MM-DD'),
        TRY_TO_DATE(d."Planned Gi Date", 'YYYY-MM-DD')
    )) AS GEM_DOORLOOPTIJD_DAGEN,
    MIN(DATEDIFF('DAY',
        TRY_TO_DATE(so."Order Date", 'YYYY-MM-DD'),
        TRY_TO_DATE(d."Planned Gi Date", 'YYYY-MM-DD')
    )) AS MIN_DOORLOOPTIJD,
    MAX(DATEDIFF('DAY',
        TRY_TO_DATE(so."Order Date", 'YYYY-MM-DD'),
        TRY_TO_DATE(d."Planned Gi Date", 'YYYY-MM-DD')
    )) AS MAX_DOORLOOPTIJD
FROM DEMO.GOLD_DIMENSIONAL."Fact Sales Order Item" soi
JOIN DEMO.GOLD_DIMENSIONAL."Fact Sales Order" so
    ON soi."Sales Order Number" = so."Sales Order Number"
JOIN DEMO.GOLD_DIMENSIONAL."Fact Delivery Item" di
    ON soi."Ref Sales Order" = di."Ref Sales Order"
    AND soi."Item Number" = di."Ref Sales Order Item"
JOIN DEMO.GOLD_DIMENSIONAL."Fact Delivery" d
    ON di."Delivery Number" = d."Delivery Number"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Plant" p
    ON di."Plant Code" = p."Plant Code"
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON soi."Material Number" = m."Material Number"
GROUP BY p."Plant Code", p."Plant Name", m."Material Group"
ORDER BY GEM_DOORLOOPTIJD_DAGEN DESC;

-- ============================================================
-- 9. KOSTENANALYSE PER KOSTENPLAATS
-- Waar zitten de grootste kosten in de productie?
-- ============================================================
SELECT
    cc.COST_CENTER,
    cc.COST_CENTER_NAME,
    cc.COST_CENTER_CATEGORY,
    ce.COST_ELEMENT,
    ce.COST_ELEMENT_NAME,
    SUM(CASE WHEN a.DEBIT_CREDIT_INDICATOR = 'S' THEN a.LOCAL_CURRENCY_AMOUNT ELSE 0 END) AS TOTAAL_DEBET,
    SUM(CASE WHEN a.DEBIT_CREDIT_INDICATOR = 'H' THEN a.LOCAL_CURRENCY_AMOUNT ELSE 0 END) AS TOTAAL_CREDIT,
    SUM(CASE WHEN a.DEBIT_CREDIT_INDICATOR = 'S' THEN a.LOCAL_CURRENCY_AMOUNT
             ELSE -a.LOCAL_CURRENCY_AMOUNT END) AS NETTO_KOSTEN
FROM DEMO.SILVER.ACCOUNTING_DOCUMENT_ITEMS a
JOIN DEMO.SILVER.COST_CENTERS cc
    ON a.COST_CENTER = cc.COST_CENTER
JOIN DEMO.SILVER.COST_ELEMENTS ce
    ON a.GL_ACCOUNT = ce.COST_ELEMENT
GROUP BY cc.COST_CENTER, cc.COST_CENTER_NAME, cc.COST_CENTER_CATEGORY,
         ce.COST_ELEMENT, ce.COST_ELEMENT_NAME
ORDER BY NETTO_KOSTEN DESC
LIMIT 20;

-- ============================================================
-- 10. KWALITEITSOVERZICHT: MELDINGEN PER MATERIAAL
-- Welke producten hebben de meeste kwaliteitsproblemen?
-- ============================================================
SELECT
    m."Material Number",
    m."Material Description",
    m."Material Group",
    q."Complaint Type",
    COUNT(*) AS AANTAL_MELDINGEN,
    SUM(TRY_TO_DOUBLE(q."Quantity Complained")) AS TOTAAL_HOEVEELHEID_KLACHT,
    SUM(TRY_TO_DOUBLE(q."Estimated Costs")) AS GESCHATTE_KOSTEN,
    ROUND(COUNT(*) * 100.0 / NULLIF(SUM(COUNT(*)) OVER (), 0), 2) AS PERCENTAGE_VAN_TOTAAL
FROM DEMO.GOLD_DIMENSIONAL."Fact Complaint" q
JOIN DEMO.GOLD_DIMENSIONAL."Dim Material" m
    ON q."Material Number" = m."Material Number"
GROUP BY m."Material Number", m."Material Description", m."Material Group", q."Complaint Type"
ORDER BY AANTAL_MELDINGEN DESC
LIMIT 15;
