# DOOM project – Entrega 3

## Estructura

- `cargar_muestra.psql`: carga muestra (CSV pequeño).
- `cambio_telemetria.sql`: migración a `telemetry_event`.
- `Indexes.sql`: índices para acelerar consultas.
- `vistas.sql`: vistas lógicas (player_measures, hotspots_250).
- `vista_materializada.sql`: MV de segmentos de trayectoria.
- `consultas_analiticas.sql`: 5 consultas analíticas finales.


- `data/telemetry_sample.csv`: muestra pequeña (≈1600 filas).  
- `doc/entrega3.pdf`: documento de entrega con pantallazos y análisis.



## Pasos para arrancar

### 1) Crear la base de datos
bash
createdb doomdb2
### 2) incluir esquema general
psql -d doomdb2 -f MODELODOOM.sql
### 3) incluir el staging
psql -d doomdb2 -f staging.sql
### 4)Incluir las semillas (opcional)
psql -d doomdb2 -f semillas.sql
### 5) Cargar la muestra
psql -d doomdb2 -f cargar_muestra.psql
### 6)Migrar al esquema 
psql -d doomdb2 -f cambio_telemetria.sql
### 7)Crear indices
psql -d doomdb2 -f Indexes.sql
### 8)Crear vistas
psql -d doomdb2  vistas.sql
### 9) crear la vista materialziada y su indice
psql -d doomdb2 -f vista_materializada.sql
### 10)Refrescar la Vista materializada
REFRESH MATERIALIZED VIEW mv_trajectory_segments
### 11) Consultas analiticas
psql -d doomdb2 -f sql/10_consultas_analiticas.sql


