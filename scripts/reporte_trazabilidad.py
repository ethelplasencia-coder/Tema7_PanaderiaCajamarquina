#!/usr/bin/env python3
"""Reporte semiautomatizado de trazabilidad Req-CU-Clase-Prueba (Tema 7)."""
import csv, sys
from collections import defaultdict

def cargar(ruta):
    with open(ruta, encoding="utf-8") as f:
        return list(csv.DictReader(f))

def lista(celda):
    return [x for x in celda.split(";") if x]

def reporte(ruta):
    filas = cargar(ruta)
    rf = [r for r in filas if r["Req"].startswith("RF")]
    rnf = [r for r in filas if r["Req"].startswith("RNF")]
    brechas = []
    for r in rf:
        for col in ("CU", "HU", "Clases", "Pruebas"):
            if not lista(r[col]):
                brechas.append(f'{r["Req"]}: sin {col}')
    for r in rnf:
        for col in ("Clases", "Pruebas"):
            if not lista(r[col]):
                brechas.append(f'{r["Req"]}: sin {col}')
    por_clase, por_prueba = defaultdict(set), defaultdict(set)
    for r in filas:
        for c in lista(r["Clases"]): por_clase[c].add(r["Req"])
        for p in lista(r["Pruebas"]): por_prueba[p].add(r["Req"])
    def pct(n, d): return f"{n}/{d} ({100*n/d:.1f} %)"
    print(f"== {ruta} ==")
    for col in ("CU", "HU", "Clases", "Pruebas"):
        n = sum(1 for r in rf if lista(r[col]))
        print(f"RF con {col:<8}: {pct(n, len(rf))}")
    for col in ("Clases", "Pruebas"):
        n = sum(1 for r in rnf if lista(r[col]))
        print(f"RNF con {col:<7}: {pct(n, len(rnf))}")
    print("Clases/paquetes trazados:", len(por_clase))
    print("Pruebas trazadas :", len(por_prueba))
    print("Brechas:", brechas if brechas else "ninguna")
    return por_clase, por_prueba

if __name__ == "__main__":
    for ruta in sys.argv[1:]:
        reporte(ruta)
