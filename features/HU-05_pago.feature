# language: es
# Trazabilidad: HU-05 ← RF05 | CU-05 | Must
Característica: HU-05 Pagar y confirmar pedido

  Esquema del escenario: PR-13 Confirmación con tres métodos de pago
    Dado un pedido de S/ 55.00 con entrega "<entrega>"
    Cuando el cliente paga con "<metodo>"
    Entonces el total es S/ <total>
    Y el pedido queda en "<estado>" con un número de pedido único

    Ejemplos:
      | metodo   | entrega          | total | estado                            |
      | Efectivo | Delivery         | 58.00 | Recibido – pago contra entrega    |
      | Yape     | Delivery         | 58.00 | Recibido – pago por validar       |
      | Plin     | Recojo en tienda | 55.00 | Recibido – pago por validar       |

  Escenario: PR-14 Pago sin código de operación
    Cuando el cliente elige "Yape" y no ingresa el código de operación
    Entonces el sistema no confirma y pide el código

  Escenario: PR-15 Pago rechazado
    Cuando el pago con "Plin" es rechazado
    Entonces el pedido no se confirma y el carrito se conserva

  Escenario: PR-16 Doble clic en confirmar
    Cuando el cliente pulsa "Confirmar" dos veces seguidas
    Entonces se registra un solo pedido
