# language: es
# Trazabilidad: HU-08 ← RF08 | CU-08
Característica: HU-08 Descontar insumos según receta

  Escenario: PR-21 Descuento por receta
    Dado que "Pan de yema" usa 40 g de "Harina" por unidad y hay 10 000 g
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

