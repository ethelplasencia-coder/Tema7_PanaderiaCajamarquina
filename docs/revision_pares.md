# Revisión por pares – Tema 7

| Artefacto | Autor | Revisor |
|-----------|-------|---------|
| Backlog, Gherkin y catálogo | YC | JS |
| CU-13 | EP | GS |
| Modelo UML | GS | EP |
| Matriz y script | JS | YC |

Criterios: IDs únicos, trazabilidad completa en ambos sentidos, consistencia con el catálogo vigente,
corrección de los cálculos y una prueba por criterio de aceptación.

| ID | Sev. | Hallazgo | Corrección | Estado |
|----|------|----------|------------|--------|
| RP-01 | Mayor | «RF11 registrar recetas» (Tema 4) colisiona con RF11 existente | Se asigna RF13 | Corregido (CR-001) |
| RP-02 | Mayor | RF11 y RF12 sin HU | HU-16 y HU-17 | Corregido (CR-002) |
| RP-03 | Mayor | Ejemplo de HU-05 permite efectivo con delivery (contradice CA-RF05) | Esquema separa recojo y delivery; PR-40 | Corregido (CR-002) |
| RP-04 | Media | CA-RF08 (insumo bajo el mínimo) sin escenario | PR-39 | Corregido (CR-001) |
| RP-05 | Media | «pago pendiente» (RF12) vs. «pago por validar» (HU-05) | Requiere decisión de la PO | Abierto |
| RP-06 | Menor | Tabla requisito–fase sin RF13 | Fila agregada | Corregido |
| RP-07 | Menor | PR-24 a PR-34 siguen como checklist o manuales | Escribir Gherkin para HU-06, 09, 10, 12, 16 y 17 | Abierto |
