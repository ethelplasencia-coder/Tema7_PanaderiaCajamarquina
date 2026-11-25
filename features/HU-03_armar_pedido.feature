# language: es
# Trazabilidad: HU-03 ← RF03 | CU-03
Característica: HU-03 Armar pedido

  Escenario: PR-07 Pedido con recojo
    Cuando el cliente agrega 10 "Pan de yema" y elige "Recojo en tienda"
    Entonces el pedido queda listo para pagar sin costo de envío

  Escenario: PR-08 Delivery sin dirección
    Cuando el cliente elige "Delivery" sin registrar dirección
    Entonces el sistema no avanza y pide la dirección

  Escenario: PR-09 Carrito vacío
    Cuando el cliente intenta continuar con el carrito vacío
    Entonces el sistema muestra "Agrega al menos un producto"

  Escenario: PR-10 Cantidad mayor al stock
    Dado que hay 5 "Empanadas" disponibles
    Cuando el cliente pide 8
    Entonces el sistema muestra "Solo hay 5 unidades disponibles"

