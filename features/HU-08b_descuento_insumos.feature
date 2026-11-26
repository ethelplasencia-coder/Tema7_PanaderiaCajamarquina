# language: es
# Trazabilidad: HU-08b ← RF08 | CU-08 | CR-001 | Must
Característica: HU-08b Descontar insumos según la receta registrada

  Escenario: PR-21 Descuento por receta
    Dado que "Pan de yema" tiene receta vigente (RF13) con 40 g de "Harina" por unidad y hay 10 000 g
    Cuando se confirma un pedido de 20 unidades
    Entonces la harina queda en 9 200 g

  Escenario: PR-22 Devolución al anular
    Dado un pedido confirmado de 20 "Pan de yema" que descontó 800 g de "Harina"
    Cuando el cajero anula el pedido
    Entonces se devuelven 800 g de "Harina" al inventario

  Escenario: PR-23 Producto sin receta
    Dado que "Rosquitas" no tiene receta
    Cuando se confirma un pedido de "Rosquitas"
    Entonces el pedido se confirma y se alerta a la propietaria

  Escenario: PR-39 Insumo bajo el mínimo marca el producto como no disponible
    Dado que "Pan de yema" usa 3 g de "Mantequilla" por unidad y hay 4 000 g
    Y el stock mínimo de "Mantequilla" es 3 950 g
    Cuando se confirma un pedido de 20 "Pan de yema"
    Entonces la mantequilla queda en 3 940 g
    Y "Pan de yema" aparece como "Agotado" en el catálogo

