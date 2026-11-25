# language: es
# Trazabilidad: HU-02 ← RF02 | CU-02
Característica: HU-02 Consultar catálogo

  Escenario: PR-04 Catálogo con disponibles y agotados
    Cuando el cliente abre el catálogo
    Entonces ve los productos disponibles con precio
    Y los agotados aparecen marcados como "Agotado"

  Escenario: PR-05 Actualización de stock
    Dado que "Pan de yema" tiene 0 unidades disponibles
    Cuando el cliente recarga el catálogo
    Entonces "Pan de yema" aparece como "Agotado"

  Escenario: PR-06 Vista en celular
    Cuando el cliente abre el catálogo desde un celular
    Entonces el catálogo se muestra adaptado a la pantalla

