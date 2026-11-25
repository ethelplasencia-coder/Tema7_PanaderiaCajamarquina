# language: es
# Trazabilidad: HU-04 ← RF04 | CU-04
Característica: HU-04 Calcular total con envío

  Escenario: PR-11 Total por tipo de entrega y zona
    Dado un pedido de S/ 55.00
    Cuando el cliente elige "Delivery" a una zona con envío de S/ 3.00
    Entonces el total es S/ 58.00

  Escenario: PR-12 Zona sin reparto
    Cuando el cliente elige "Delivery" a una dirección fuera de las zonas de reparto
    Entonces el sistema indica que la zona no tiene reparto y ofrece "Recojo en tienda"

