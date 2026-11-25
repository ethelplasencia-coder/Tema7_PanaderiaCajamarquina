# Tema 7 – Gestión del cambio y trazabilidad integral (SIPAN)

Universidad Privada del Norte · Modelado y Desarrollo de Aplicaciones (CIIN1322P) · Grupo 5
Caso: SIPAN – Panadería Cajamarquina · Docente: Dennis Abanto Sanchez · Cajamarca, 2026

Integrantes: Cabellos Torres Yajaira Lisseth (YC) · Plasencia Mostacero Ethel Samanta (EP) ·
Sangay Chacón José Fernando (JS) · Silva Aguirre Gianfranco Alejandro (GS)

## Objetivo
Aplicar control de cambios y versionamiento sobre los artefactos de SIPAN para conservar una
línea base verificable, y analizar el impacto de un cambio mediante una matriz de trazabilidad
Req–CU–Clase–Prueba y reportes de cobertura.

## Versiones
| Tag | Contenido |
|-----|-----------|
| v1.0 | Línea base: RF01–RF12, RNF01–RNF06, HU-01–HU-15, CU-01–CU-12, CL-01–CL-18, PR-01–PR-34 |
| v1.1 | CR-001 (RF13 registro de recetas, RF08 modificado) y CR-002 (HU-16, HU-17, ejemplo HU-05, PR-40) |

## Índice de evidencias
| N.° | Evidencia | Ruta | IDs |
|-----|-----------|------|-----|
| 1 | Formato CR-001 / CR-002 y línea base v1.0 | docs/cr/, tag v1.0 | CR-001, CR-002 |
| 2 | Matrices v1.0 y v1.1 y reporte de cobertura | matriz/, evidencias/ | RF01–RF13 |
| 3 | Análisis de impacto | docs/cr/CR-001.md | CR-001, RF08, RF13 |
| 4 | Figuras 1 y 2 (fuente PlantUML) | modelo/, evidencias/ | CL-19–CL-21, CU-08 |
| 5 | PR revisado y tag v1.1 | GitHub → Pull requests / Tags | CR-001 |

## Convención de identificadores
RFnn / RNFnn · HU-nn (HU-nnx si se divide) · CU-nn · CL-nn / PK-nn · PR-nn · CR-nnn · RP-nn ·
tags vX.Y · ramas `cambio/CR-nnn-descripcion` · commits `tipo(alcance): descripción [IDs]`.
Un ID es único e inmutable, nunca se reutiliza (lo retirado se marca «Obsoleto»), cada artefacto
cita el nivel superior y cada commit incluye los IDs que afecta.

## Cómo regenerar el reporte de cobertura
```
python3 scripts/reporte_trazabilidad.py matriz/matriz_v1.0.csv matriz/matriz_v1.1.csv
```
