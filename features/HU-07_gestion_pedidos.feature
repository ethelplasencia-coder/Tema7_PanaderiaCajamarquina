# language: es
# Trazabilidad: HU-07 ← RF07 | CU-07
Característica: HU-07 Gestionar pedidos y estados

  Escenario: PR-17 Pedido nuevo en panel
    Cuando un cliente confirma un pedido
    Entonces el pedido aparece en el panel del cajero con estado "Recibido"

  Escenario: PR-18 Avance de estado
    Dado un pedido en "Recibido"
    Cuando el cajero lo pasa a "En preparación"
    Entonces el estado se actualiza y se registra la hora

  Escenario: PR-19 Salto de estado
    Dado un pedido en "Recibido"
    Cuando el cajero intenta pasarlo a "Entregado"
    Entonces el sistema no lo permite

  Escenario: PR-20 Acceso de cliente
    Cuando un usuario con rol "Cliente" intenta abrir el panel del cajero
    Entonces el sistema niega el acceso

