# Prompt: genereer dbt bronzemodellen voor SAP ECC

Genereer dbt modellen voor SAP ECC-tabellen uit source sap_ecc in schema SAP_ECC.

Requirements:
- Definieer de bron in dbt/models/sources.yml.
- Maak voor elke gevraagde tabel een model in dbt/models/bronze/ met naam htecc_<table>.sql.
- Gebruik incremental materialization met merge-strategie.
- Bouw de output als SCD2 naar een target-tabel met prefix HTECC_<TABLE>.
- Gebruik een passende unieke sleutel of samengestelde business key.
- Voeg de benodigde kolommen toe: valid_from, valid_to, is_current, load_ts.

Gebruik de skill sap-ecc-dbt-bronze voor de standaardstructuur en volg de projectconventies in dbt.
