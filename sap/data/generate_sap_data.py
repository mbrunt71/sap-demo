"""
SAP ECC Test Data Generator for Cookie Manufacturer
Generates referentially consistent CSV files for all major SAP modules.
"""
import csv
import os
import random
from datetime import datetime, timedelta

random.seed(42)
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)))
MANDT = '100'

# --- Helper functions ---
def rand_date(start_year=2022, end_year=2025):
    """Returns date in SAP DATS format: YYYYMMDD (8 numeric chars)."""
    start = datetime(start_year, 1, 1)
    end = datetime(end_year, 12, 31)
    delta = (end - start).days
    return (start + timedelta(days=random.randint(0, delta))).strftime('%Y%m%d')

def rand_date_after(base_date_str, min_days=1, max_days=30):
    """Accepts and returns SAP DATS format: YYYYMMDD."""
    base = datetime.strptime(base_date_str, '%Y%m%d')
    return (base + timedelta(days=random.randint(min_days, max_days))).strftime('%Y%m%d')

def rand_numc(length):
    """Returns a zero-padded numeric string of the given length."""
    max_val = 10**length - 1
    return f'{random.randint(0, max_val):0{length}d}'

def write_csv(filename, headers, rows):
    path = os.path.join(OUTPUT_DIR, filename)
    with open(path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(headers)
        writer.writerows(rows)
    print(f"  {filename}: {len(rows)} rows")

# =============================================================================
# MASTER DATA
# =============================================================================
print("Generating master data...")

# Plants (T001W)
plants = ['1000', '1100', '1200', '1300', '1400']
plant_names = ['Bakkerij Amsterdam', 'Bakkerij Rotterdam', 'Distributie Utrecht', 'Bakkerij Antwerpen', 'Verpakking Eindhoven']
plant_countries = ['NL', 'NL', 'NL', 'BE', 'NL']
t001w_rows = [[MANDT, plants[i], plant_names[i], '1000', plant_countries[i]] for i in range(len(plants))]
write_csv('T001W.csv', ['MANDT','WERKS','NAME1','BUKRS','LAND1'], t001w_rows)

# Materials (MARA + MAKT)
material_types = {
    'FERT': 'Finished Good',
    'HALB': 'Semi-Finished',
    'ROH': 'Raw Material',
    'VERP': 'Packaging',
}
material_groups = {
    'FERT': ['BISCUIT', 'WAFEL', 'KOEKROL', 'SPECULAAS', 'STROOPWFL'],
    'HALB': ['DEEG', 'VULLING', 'GLAZUUR'],
    'ROH': ['MEEL', 'BOTER', 'SUIKER', 'EIEREN', 'CHOCOLA', 'KANEEL', 'VANILLE'],
    'VERP': ['DOOS', 'FOLIE', 'ETIKET', 'PALLET'],
}
cookie_names = {
    'BISCUIT': ['Boterkoekje', 'Havermoutkoek', 'Kokoskoek', 'Chocoladebiscuit', 'Zandkoek'],
    'WAFEL': ['Stroopwafel', 'Luikse Wafel', 'Ijswafel', 'Krokante Wafel'],
    'KOEKROL': ['Kaneelrol', 'Chocoladerol', 'Vanillerol'],
    'SPECULAAS': ['Speculaas Groot', 'Speculaas Klein', 'Gevulde Speculaas', 'Speculaasbrokken'],
    'STROOPWFL': ['Stroopwafel XL', 'Mini Stroopwafel', 'Karamel Stroopwafel'],
}
raw_material_names = {
    'MEEL': ['Tarwebloem', 'Volkoren Meel', 'Speltmeel', 'Maizena'],
    'BOTER': ['Roomboter', 'Margarine', 'Kokosolie'],
    'SUIKER': ['Kristalsuiker', 'Poedersuiker', 'Bruine Suiker', 'Stroop'],
    'EIEREN': ['Verse Eieren', 'Eiwit Poeder', 'Eigeel'],
    'CHOCOLA': ['Melkchocolade', 'Pure Chocolade', 'Witte Chocolade', 'Cacao Poeder'],
    'KANEEL': ['Kaneel Gemalen', 'Kaneelstokjes'],
    'VANILLE': ['Vanille-extract', 'Vanillesuiker'],
}
packaging_names = {
    'DOOS': ['Kartonnen Doos 250g', 'Kartonnen Doos 500g', 'Display Doos'],
    'FOLIE': ['Verpakkingsfolie Transparant', 'Folie Metallic'],
    'ETIKET': ['Etiket Standaard', 'Etiket Premium'],
    'PALLET': ['Europallet', 'Halfpallet'],
}

materials = []  # (MATNR, MTART, MATKL, description, MEINS)
mat_idx = 1
for mtype, groups in material_groups.items():
    for grp in groups:
        if mtype == 'FERT':
            names = cookie_names.get(grp, [f'{grp} Product {i}' for i in range(5)])
        elif mtype == 'ROH':
            names = raw_material_names.get(grp, [f'{grp} Grondstof {i}' for i in range(3)])
        elif mtype == 'VERP':
            names = packaging_names.get(grp, [f'{grp} Verpakking {i}' for i in range(3)])
        else:
            names = [f'{grp} Halffabricaat {i+1}' for i in range(4)]
        for name in names:
            matnr = f'MAT{mat_idx:06d}'
            unit = 'ST' if mtype in ('FERT', 'VERP') else 'KG'
            materials.append((matnr, mtype, grp, name, unit))
            mat_idx += 1

# Pad to 500 materials
while len(materials) < 500:
    matnr = f'MAT{mat_idx:06d}'
    mtype = random.choice(['FERT', 'ROH', 'VERP'])
    grp = random.choice(material_groups[mtype])
    name = f'{grp} Variant {mat_idx}'
    unit = 'ST' if mtype in ('FERT', 'VERP') else 'KG'
    materials.append((matnr, mtype, grp, name, unit))
    mat_idx += 1

mara_rows = [[MANDT, m[0], m[1], 'N', m[2], m[4], round(random.uniform(0.1, 5.0), 3), 'KG', rand_date(2018, 2022)] for m in materials]
write_csv('MARA.csv', ['MANDT','MATNR','MTART','MBRSH','MATKL','MEINS','BRGEW','GEWEI','ERDAT'], mara_rows)

makt_rows = [[MANDT, m[0], 'E', m[3]] for m in materials]
write_csv('MAKT.csv', ['MANDT','MATNR','SPRAS','MAKTX'], makt_rows)

# Material-Plant (MARC)
marc_rows = []
for m in materials:
    assigned_plants = random.sample(plants, random.randint(1, 3))
    for p in assigned_plants:
        marc_rows.append([MANDT, m[0], p, random.choice(['PD','VB','ND']), f'MRP{random.randint(1,10):03d}', random.choice(['E','F','X']), ''])
write_csv('MARC.csv', ['MANDT','MATNR','WERKS','DISMM','DISPO','BESKZ','SOBSL'], marc_rows)

# Finished goods and raw materials lists for FK references
finished_goods = [m[0] for m in materials if m[1] == 'FERT']
raw_materials = [m[0] for m in materials if m[1] == 'ROH']
semi_finished = [m[0] for m in materials if m[1] == 'HALB']
all_matnr = [m[0] for m in materials]

# Customers (KNA1 + KNVV)
customers = []
cities_nl = ['Amsterdam', 'Rotterdam', 'Utrecht', 'Den Haag', 'Eindhoven', 'Groningen', 'Breda', 'Tilburg', 'Almere', 'Nijmegen']
cities_be = ['Brussel', 'Antwerpen', 'Gent', 'Brugge', 'Leuven']
cities_de = ['Berlin', 'Hamburg', 'München', 'Köln', 'Frankfurt']
retailer_names = ['Albert Heijn', 'Jumbo', 'Lidl', 'Aldi', 'Plus', 'Dirk', 'Coop', 'Spar', 'Colruyt', 'Delhaize', 'Carrefour', 'REWE', 'Edeka', 'Penny', 'Netto']

for i in range(200):
    kunnr = f'CUS{i+1:06d}'
    if i < 80:
        country, city = 'NL', random.choice(cities_nl)
    elif i < 130:
        country, city = 'BE', random.choice(cities_be)
    else:
        country, city = 'DE', random.choice(cities_de)
    name = f'{random.choice(retailer_names)} {city} {i+1}'
    customers.append((kunnr, name, country, city))

kna1_rows = [[MANDT, c[0], c[1], c[2], c[3], f'{random.randint(1000,9999)} AB', f'Straat {random.randint(1,200)}'] for c in customers]
write_csv('KNA1.csv', ['MANDT','KUNNR','NAME1','LAND1','ORT01','PSTLZ','STRAS'], kna1_rows)

all_kunnr = [c[0] for c in customers]
knvv_rows = [[MANDT, c[0], '1000', '10', '00', random.choice(['01','02','03','04']), 'EUR'] for c in customers]
write_csv('KNVV.csv', ['MANDT','KUNNR','VKORG','VTWEG','SPART','KDGRP','WAERS'], knvv_rows)

# Vendors (LFA1)
vendors = []
vendor_names = ['Molen de Zaan', 'FrieslandCampina', 'Suiker Unie', 'Cargill Cacao', 'Barry Callebaut',
                'Verstegen Spices', 'Zeelandia', 'CSM Bakery', 'Puratos', 'Aviko']
for i in range(100):
    lifnr = f'VEN{i+1:06d}'
    name = f'{random.choice(vendor_names)} {random.choice(["BV","NV","GmbH"])} {i+1}'
    country = random.choice(['NL','NL','NL','BE','DE'])
    vendors.append((lifnr, name, country))

lfa1_rows = [[MANDT, v[0], v[1], v[2], random.choice(cities_nl + cities_be), f'{random.randint(1000,9999)}'] for v in vendors]
write_csv('LFA1.csv', ['MANDT','LIFNR','NAME1','LAND1','ORT01','PSTLZ'], lfa1_rows)
all_lifnr = [v[0] for v in vendors]

# Cost Centers (CSKS + CSKT)
cost_centers = []
cc_names = ['Productielijn 1', 'Productielijn 2', 'Productielijn 3', 'Verpakkingslijn 1', 'Verpakkingslijn 2',
            'Magazijn', 'Kwaliteitscontrole', 'Onderhoud', 'Administratie', 'Verkoop',
            'Inkoop', 'R&D', 'Logistiek', 'Facilitair', 'IT',
            'Directie', 'HR', 'Marketing', 'Export', 'Energiebeheer']
for i in range(50):
    kostl = f'{1000 + i * 100}'
    name = cc_names[i % len(cc_names)] + (f' {i // 20 + 1}' if i >= 20 else '')
    cost_centers.append((kostl, name))

csks_rows = [[MANDT, '1000', cc[0], '9999-12-31', '1000', random.choice(['P','V','H','A'])] for cc in cost_centers]
write_csv('CSKS.csv', ['MANDT','KOKRS','KOSTL','DATBI','BUKRS','KOSAR'], csks_rows)

cskt_rows = [[MANDT, '1000', cc[0], 'E', '9999-12-31', cc[1], f'Kostenplaats {cc[1]}'] for cc in cost_centers]
write_csv('CSKT.csv', ['MANDT','KOKRS','KOSTL','SPRAS','DATBI','KTEXT','LTEXT'], cskt_rows)
all_kostl = [cc[0] for cc in cost_centers]

# Cost Elements (CSKA + CSKU)
cost_elements = [
    ('400000', 'Grondstoffen'), ('410000', 'Verpakkingsmateriaal'), ('420000', 'Hulpstoffen'),
    ('430000', 'Energie'), ('440000', 'Water'), ('500000', 'Lonen Productie'),
    ('510000', 'Lonen Verpakking'), ('520000', 'Salarissen'), ('600000', 'Afschrijvingen'),
    ('610000', 'Onderhoud Machines'), ('620000', 'Huur'), ('630000', 'Verzekeringen'),
    ('700000', 'Transportkosten'), ('710000', 'Opslagkosten'), ('800000', 'Omzet Binnenland'),
    ('810000', 'Omzet Export'),
]
cska_rows = [[MANDT, '1000', ce[0], '9999-12-31', '1'] for ce in cost_elements]
write_csv('CSKA.csv', ['MANDT','KOKRS','KSTAR','DATBI','KATYP'], cska_rows)
csku_rows = [[MANDT, '1000', ce[0], 'E', ce[1], f'Kostensoort {ce[1]}'] for ce in cost_elements]
write_csv('CSKU.csv', ['MANDT','KOKRS','KSTAR','SPRAS','KTEXT','LTEXT'], csku_rows)
all_kstar = [ce[0] for ce in cost_elements]

# BOMs (STKO + STPO) - recipes
print("Generating BOMs (recipes)...")
stko_rows = []
stpo_rows = []
bom_map = {}  # matnr -> stlnr
for i, fg in enumerate(finished_goods):
    stlnr = f'BOM{i+1:06d}'
    bom_map[fg] = stlnr
    base_qty = random.choice([100, 500, 1000])
    stko_rows.append([MANDT, 'M', stlnr, '01', rand_date(2019, 2021), base_qty, 'ST'])
    # Each cookie has 3-8 ingredients
    n_components = random.randint(3, 8)
    components = random.sample(raw_materials + semi_finished, min(n_components, len(raw_materials + semi_finished)))
    for j, comp in enumerate(components):
        comp_qty = round(random.uniform(0.5, 50.0) * (base_qty / 100), 2)
        stpo_rows.append([MANDT, 'M', stlnr, f'{(j+1)*10:04d}', f'{j+1:04d}', comp, comp_qty, 'KG'])

write_csv('STKO.csv', ['MANDT','STLTY','STLNR','STLAL','DAESSION','BMENG','BMEIN'], stko_rows)
write_csv('STPO.csv', ['MANDT','STLTY','STLNR','STLKN','STPOZ','IDNRK','MENGE','MEINS'], stpo_rows)

# =============================================================================
# SALES & DISTRIBUTION
# =============================================================================
print("Generating sales orders (20,000)...")

vbak_rows = []
vbap_rows = []
vbep_rows = []
konv_rows = []

for i in range(20000):
    vbeln = f'{8000000001 + i}'
    order_date = rand_date(2022, 2025)
    kunnr = random.choice(all_kunnr)
    n_items = random.choices([1, 2, 3, 4, 5], weights=[20, 35, 25, 15, 5])[0]
    order_total = 0

    for j in range(n_items):
        posnr = f'{(j+1)*10:06d}'
        matnr = random.choice(finished_goods)
        qty = random.randint(10, 5000)
        price = round(random.uniform(1.5, 25.0), 2)
        net_value = round(qty * price, 2)
        order_total += net_value

        vbap_rows.append([MANDT, vbeln, posnr, matnr, qty, 'ST', net_value, random.choice(plants[:3])])
        # Schedule line
        del_date = rand_date_after(order_date, 3, 21)
        vbep_rows.append([MANDT, vbeln, posnr, '0001', del_date, qty, 'ST'])
        # Pricing condition
        konv_rows.append([MANDT, vbeln, posnr, '010', '001', 'PR00', price, 'EUR', net_value])
        konv_rows.append([MANDT, vbeln, posnr, '020', '001', 'K004', round(-net_value * random.uniform(0.02, 0.15), 2), 'EUR', round(-net_value * random.uniform(0.02, 0.15), 2)])

    vbak_rows.append([MANDT, vbeln, random.choice(['OR','ZOR','RE']), '1000', '10', '00', kunnr, order_date, round(order_total, 2), 'EUR'])

write_csv('VBAK.csv', ['MANDT','VBELN','AUART','VKORG','VTWEG','SPART','KUNNR','ERDAT','NETWR','WAERK'], vbak_rows)
write_csv('VBAP.csv', ['MANDT','VBELN','POSNR','MATNR','KWMENG','VRKME','NETWR','WERKS'], vbap_rows)
write_csv('VBEP.csv', ['MANDT','VBELN','POSNR','ETENR','EDATU','WMENG','VRKME'], vbep_rows)
write_csv('KONV.csv', ['MANDT','KNUMV','KPOSN','STUNR','ZAESSION','KSCHL','KBETR','WAERS','KWERT'], konv_rows)

# Deliveries (LIKP + LIPS) - ~90% of orders get delivered
print("Generating deliveries...")
likp_rows = []
lips_rows = []
del_idx = 1

for i in range(len(vbak_rows)):
    if random.random() > 0.90:
        continue
    vbeln_so = vbak_rows[i][1]
    order_date = vbak_rows[i][7]
    kunnr = vbak_rows[i][6]
    del_vbeln = f'{1800000001 + del_idx}'
    del_date = rand_date_after(order_date, 2, 14)
    likp_rows.append([MANDT, del_vbeln, 'LF', kunnr, del_date])

    # Deliver same items as order
    order_items = [row for row in vbap_rows if row[1] == vbeln_so]
    for item in order_items:
        lips_rows.append([MANDT, del_vbeln, item[2], item[3], item[4], 'ST', item[7]])

    del_idx += 1

write_csv('LIKP.csv', ['MANDT','VBELN','LFART','KUNNR','WADAT'], likp_rows)
write_csv('LIPS.csv', ['MANDT','VBELN','POSNR','MATNR','LFIMG','VRKME','WERKS'], lips_rows)

# Billing (VBRK + VBRP) - ~95% of deliveries get billed
print("Generating billing documents...")
vbrk_rows = []
vbrp_rows = []

for i in range(len(likp_rows)):
    if random.random() > 0.95:
        continue
    del_vbeln = likp_rows[i][1]
    kunnr = likp_rows[i][3]
    del_date = likp_rows[i][4]
    bill_vbeln = f'{9000000001 + i}'
    bill_date = rand_date_after(del_date, 1, 7)

    bill_total = 0
    del_items = [row for row in lips_rows if row[1] == del_vbeln]
    for item in del_items:
        qty = item[4]
        price = round(random.uniform(2.0, 30.0), 2)
        net_value = round(qty * price, 2)
        bill_total += net_value
        vbrp_rows.append([MANDT, bill_vbeln, item[2], item[3], qty, 'ST', net_value])

    vbrk_rows.append([MANDT, bill_vbeln, 'F2', kunnr, bill_date, round(bill_total, 2), 'EUR'])

write_csv('VBRK.csv', ['MANDT','VBELN','FKART','KUNNR','FKDAT','NETWR','WAERK'], vbrk_rows)
write_csv('VBRP.csv', ['MANDT','VBELN','POSNR','MATNR','FKIMG','VRKME','NETWR'], vbrp_rows)

# =============================================================================
# PURCHASING
# =============================================================================
print("Generating purchase orders (10,000)...")
ekko_rows = []
ekpo_rows = []
eket_rows = []

for i in range(10000):
    ebeln = f'{4500000001 + i}'
    order_date = rand_date(2022, 2025)
    lifnr = random.choice(all_lifnr)
    n_items = random.choices([1, 2, 3, 4], weights=[30, 35, 25, 10])[0]

    ekko_rows.append([MANDT, ebeln, '1000', 'F', 'NB', '', '', '', '', order_date, '', lifnr, 'E',
                      '', '', '', '', '', '', '', '', '1000', '', 'EUR', '', '', order_date, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''])

    for j in range(n_items):
        ebelp = f'{(j+1)*10:05d}'
        matnr = random.choice(raw_materials + [random.choice(all_matnr) for _ in range(2)])
        qty = random.randint(100, 50000)
        price = round(random.uniform(0.5, 15.0), 2)
        ekpo_rows.append([MANDT, ebeln, ebelp, matnr, qty, 'KG', price, 'EUR', random.choice(plants)])
        # Schedule line
        del_date = rand_date_after(order_date, 7, 30)
        eket_rows.append([MANDT, ebeln, ebelp, '0001', del_date, qty])

write_csv('EKKO.csv', ['MANDT','EBELN','BUKRS','BSTYP','BSART','LOEKZ','STATU','AEDAT','ERNAM','BEDAT','ANGDT','LIFNR','SPRAS','ZTERM','ZBD1T','ZBD2T','ZBD3T','ZBD1P','ZBD2P','EKORG','EKGRP','WAERS','WKURS','KUFIX','KDATB','KDATE','BWBDT','GWLDT','AUSNR','ANGNR','IHRAN','IHREZ','VERKF','TELF1','LLIEF','KUNNR','KONNR','ABGRU','AUTLF','WEAKT','RESWK','LBLIF','INCO1','INCO2','KTWRT','SUBMI','KNUMV','KALSM','STAFO','LIFRE','EXNUM','UNSEZ','LOGSY','UPINC','STAKO','FRGGR','FRGSX','FRGKE','FRGZU','FRGRL','LANDS','LPHIS','ADRNR','STCEG_L','STCEG','ABSGR','ADDNR','KORNR','MEMORY','PROCSTAT','RLWRT','REVNO','SCMPROC','REASON_CODE','MEMORYTYPE','RETTP','RETPC','DPTYP','DPPCT','DPAMT','DPDAT','MSR_ID','HIERARCHY_EXISTS','THRESHOLD_EXISTS','LEGAL_CONTRACT','DESCRIPTION','RELEASE_DATE','VSART','HANDOVERLOC','FORCE_ID','FORCE_CNT','RELOC_ID','RELOC_SEQ_ID','SOURCE_LOGSYS','OIEXGNUM','OIEXGTYP','OIAEVGTYPE','OIPIPEVAL','OIC_LIFNR','OIC_DCITYC','OIC_DCOUNC','OIC_DREGIO','OIC_DLAND1','OIC_OCITYC','OIC_OCOUNC','OIC_OREGIO','OIC_OLAND1','OIC_PORGIN','OIC_PDESTN','OIC_PTRIP','OIC_PBATCH','OIC_MOT','OIC_AORGIN','OIC_ADESTN','OIC_TRUCKN','OIA_BASELO','OID_EXTBOL','OID_MISCDL','VZSKZ','POHF_TYPE','EQ_EINDT','EQ_WERKS','FIXPO','EKGRP_ALLOW','WERKS_ALLOW','CONTRACT_ALLOW','PSTYP_ALLOW','FIXPO_ALLOW','KEY_ID_ALLOW','AUREL_ALLOW','DELPER_ALLOW','EINDT_ALLOW','LTSNR_ALLOW','OTB_LEVEL','OTB_COND_TYPE','KEY_ID','OTB_VALUE','OTB_CURR','OTB_RES_VALUE','OTB_SPEC_VALUE','SPR_RSN_PROFILE','BUDG_TYPE','OTB_STATUS','OTB_REASON','CHECK_TYPE','CON_OTB_REQ','CON_PREBOOK_LEV','CON_DISTR_LEV'], ekko_rows)
write_csv('EKPO.csv', ['MANDT','EBELN','EBELP','MATNR','MENGE','MEINS','NETPR','WAERS','WERKS'], ekpo_rows)
write_csv('EKET.csv', ['MANDT','EBELN','EBELP','ETENR','EINDT','MENGE'], eket_rows)

# Purchasing info records (EINA + EINE)
eina_rows = []
eine_rows = []
for i, lifnr in enumerate(all_lifnr):
    assigned_mats = random.sample(raw_materials, min(random.randint(3, 15), len(raw_materials)))
    for mat in assigned_mats:
        infnr = f'INF{len(eina_rows)+1:07d}'
        eina_rows.append([MANDT, infnr, mat, lifnr, ''])
        eine_rows.append([MANDT, infnr, '1000', random.choice(plants), round(random.uniform(0.5, 20.0), 2), 'EUR', random.choice([1, 10, 100])])

write_csv('EINA.csv', ['MANDT','INFNR','MATNR','LIFNR','LOEKZ'], eina_rows)
write_csv('EINE.csv', ['MANDT','INFNR','EKORG','WERKS','NETPR','WAERS','PEINH'], eine_rows)

# =============================================================================
# PRODUCTION
# =============================================================================
print("Generating production orders (8,000)...")
aufk_rows = []
afko_rows = []
afpo_rows = []
resb_rows = []
resb_idx = 1

for i in range(8000):
    aufnr = f'{1000000 + i}'
    werks = random.choice(plants[:3])
    kostl = random.choice(all_kostl[:5])
    created = rand_date(2022, 2025)
    matnr = random.choice(finished_goods)
    qty = random.randint(100, 10000)
    start_date = rand_date_after(created, 1, 7)
    end_date = rand_date_after(start_date, 1, 5)
    stlnr = bom_map.get(matnr, '')

    aufk_rows.append([MANDT, aufnr, '10', '1000', werks, kostl, created, 'SYSTEM'])
    afko_rows.append([MANDT, aufnr, rand_numc(8), stlnr, qty, 'ST', start_date, end_date])
    afpo_rows.append([MANDT, aufnr, '0001', matnr, qty, 'ST', werks])

    # Reservations (components from BOM)
    if stlnr:
        bom_items = [row for row in stpo_rows if row[2] == stlnr]
        for bi in bom_items:
            comp_matnr = bi[5]
            comp_qty = round(float(bi[6]) * qty / 100, 2)  # scale to order qty
            resb_rows.append([MANDT, f'RES{resb_idx:07d}', f'{resb_idx % 10 + 1:04d}', aufnr, comp_matnr, comp_qty, 'KG', werks])
            resb_idx += 1

write_csv('AUFK.csv', ['MANDT','AUFNR','AUTYP','BUKRS','WERKS','KOSTL','ERDAT','ERNAM'], aufk_rows)
write_csv('AFKO.csv', ['MANDT','AUFNR','DESSION','STLNR','GAMNG','GMEIN','GLTRS','GLTRP'], afko_rows)
write_csv('AFPO.csv', ['MANDT','AUFNR','POSNR','MATNR','PSMNG','MEINS','WERKS'], afpo_rows)
write_csv('RESB.csv', ['MANDT','RSNUM','RSPOS','AUFNR','MATNR','BDMNG','MEINS','WERKS'], resb_rows)

# =============================================================================
# GOODS MOVEMENTS (MKPF + MSEG)
# =============================================================================
print("Generating goods movements (15,000)...")
mkpf_rows = []
mseg_rows = []

for i in range(15000):
    mblnr = f'{5000000001 + i}'
    mjahr = str(random.choice([2022, 2023, 2024, 2025]))
    posting_date = rand_date(int(mjahr), int(mjahr))
    user = f'USER{random.randint(1,50):03d}'
    mkpf_rows.append([MANDT, mblnr, mjahr, posting_date, posting_date, user])

    n_items = random.randint(1, 4)
    for j in range(n_items):
        zeile = f'{j+1:04d}'
        bwart = random.choice(['101', '201', '261', '301', '311', '551', '601', '901'])
        matnr = random.choice(all_matnr)
        werks = random.choice(plants)
        lgort = random.choice(['0001', '0002', '0003', '0010'])
        menge = round(random.uniform(1, 5000), 2)
        dmbtr = round(menge * random.uniform(0.5, 20.0), 2)
        mseg_rows.append([MANDT, mblnr, mjahr, zeile, bwart, matnr, werks, lgort, menge, 'KG', dmbtr, 'EUR'])

write_csv('MKPF.csv', ['MANDT','MBLNR','MJAHR','BUDAT','BLDAT','USNAM'], mkpf_rows)
write_csv('MSEG.csv', ['MANDT','MBLNR','MJAHR','ZEILE','BWART','MATNR','WERKS','LGORT','MENGE','MEINS','DMBTR','WAERS'], mseg_rows)

# =============================================================================
# FINANCE (BKPF + BSEG)
# =============================================================================
print("Generating accounting documents (20,000)...")
bkpf_rows = []
bseg_rows = []

doc_types = ['RE', 'RN', 'SA', 'KR', 'DR', 'AB']
for i in range(20000):
    belnr = f'{100000001 + i}'
    gjahr = str(random.choice([2022, 2023, 2024, 2025]))
    posting_date = rand_date(int(gjahr), int(gjahr))
    blart = random.choice(doc_types)
    bkpf_rows.append([MANDT, '1000', belnr, gjahr, blart, posting_date, posting_date, 'EUR', f'USER{random.randint(1,50):03d}'])

    n_items = random.randint(2, 5)
    for j in range(n_items):
        buzei = f'{j+1:03d}'
        koart = random.choice(['S', 'D', 'K'])
        shkzg = 'S' if j == 0 else 'H'
        amount = round(random.uniform(100, 50000), 2)
        hkont = random.choice(all_kstar)
        kostl = random.choice(all_kostl) if random.random() > 0.3 else ''
        matnr = random.choice(all_matnr) if random.random() > 0.5 else ''
        bseg_rows.append([MANDT, '1000', belnr, gjahr, buzei, koart, shkzg, amount, amount, hkont, kostl, matnr])

write_csv('BKPF.csv', ['MANDT','BUKRS','BELNR','GJAHR','BLART','BUDAT','BLDAT','WAERS','USNAM'], bkpf_rows)
write_csv('BSEG.csv', ['MANDT','BUKRS','BELNR','GJAHR','BUZEI','KOART','SHKZG','DMBTR','WRBTR','HKONT','KOSTL','MATNR'], bseg_rows)

# =============================================================================
# QUALITY (QMEL)
# =============================================================================
print("Generating quality notifications (1,000)...")
qmel_rows = []
for i in range(1000):
    qmnum = f'QM{i+1:08d}'
    matnr = random.choice(finished_goods + raw_materials)
    werks = random.choice(plants[:3])
    qmdat = rand_date(2022, 2025)
    qmart = random.choice(['Q1', 'Q2', 'Q3'])
    qmel_rows.append([MANDT, qmnum, matnr, werks, qmdat, qmart, f'USER{random.randint(1,50):03d}'])

write_csv('QMEL.csv', ['MANDT','QMNUM','MATNR','WERKS','QMDAT','QMART','ERNAM'], qmel_rows)

# =============================================================================
# WAREHOUSE (LQUA)
# =============================================================================
print("Generating warehouse quants (2,000)...")
lqua_rows = []
for i in range(2000):
    lgnum = random.choice(['100', '200'])
    lqnum = f'LQ{i+1:08d}'
    matnr = random.choice(all_matnr)
    werks = random.choice(plants)
    lgtyp = random.choice(['001', '002', '003', '010', '020'])
    lgpla = f'{lgtyp}-{random.randint(1,50):02d}-{random.randint(1,5):02d}'
    gesme = round(random.uniform(10, 10000), 2)
    meins = 'KG' if random.random() > 0.3 else 'ST'
    lqua_rows.append([MANDT, lgnum, lqnum, matnr, werks, lgtyp, lgpla, gesme, meins])

write_csv('LQUA.csv', ['MANDT','LGNUM','LQNUM','MATNR','WERKS','LGTYP','LGPLA','GESME','MEINS'], lqua_rows)

# Purchase requisitions (EBAN)
print("Generating purchase requisitions (5,000)...")
eban_rows = []
for i in range(5000):
    banfn = f'{10000001 + i}'
    bnfpo = '00010'
    matnr = random.choice(raw_materials + [random.choice(all_matnr)])
    menge = random.randint(50, 20000)
    eban_rows.append([MANDT, banfn, bnfpo, matnr, menge, 'KG', random.choice(plants)])
write_csv('EBAN.csv', ['MANDT','BANFN','BNFPO','MATNR','MENGE','MEINS','WERKS'], eban_rows)

print("\n=== Generation complete! ===")
print(f"Output directory: {OUTPUT_DIR}")
total_files = len([f for f in os.listdir(OUTPUT_DIR) if f.endswith('.csv')])
print(f"Total CSV files: {total_files}")
