# Casos de uso SIPAN

| CU | Caso de uso | Actor principal | RF | HU |
|----|-------------|-----------------|----|----|
| CU-01 | Registrar cuenta e iniciar sesión | Cliente | RF01 | HU-01 |
| CU-02 | Consultar catálogo | Cliente | RF02 | HU-02 |
| CU-03 | Armar pedido | Cliente | RF03 | HU-03 |
| CU-04 | Calcular total con envío (incluido en CU-03) | Cliente | RF04 | HU-04 |
| CU-05 | Pagar y confirmar pedido | Cliente | RF05 | HU-05 |
| CU-06 | Consultar estado del pedido | Cliente | RF06 | HU-06 |
| CU-07 | Gestionar pedidos y estados | Cajero | RF07 | HU-07 |
| CU-08 | Descontar insumos según receta **(mod. CR-001)** | Sistema (tras CU-05) | RF08 | HU-08b |
| CU-09 | Generar reporte diario | Propietaria | RF09 | HU-09 |
| CU-10 | Asignar y consultar entrega | Cajero / Repartidor | RF10 | HU-10, HU-12 |
| CU-11 | Agrupar pedidos por zona | Sistema / Repartidor | RF11 | HU-16 |
| CU-12 | Gestionar pago pendiente | Cajero | RF12 | HU-17 |
| CU-13 | Registrar receta de producto **(nuevo CR-001)** | Propietaria | RF13 | HU-08a |

## CU-13 – Registrar receta de producto

| Campo | Detalle |
|-------|---------|
| Actor / Requisito / HU | Propietaria · RF13 · HU-08a |
| Precondición | Sesión con rol «Propietaria»; el producto y los insumos existen |
| Flujo principal | 1) Selecciona el producto. 2) Agrega líneas de insumo con cantidad en gramos. 3) Guarda. 4) El sistema valida, crea la versión vigente y marca el producto «con receta». |
| Flujos alternos | A1 insumo inexistente → mensaje y no guarda. A2 cantidad ≤ 0 → mensaje. A3 receta existente → se crea una nueva versión y la anterior se conserva. |
| Reglas | Unidad única: gramos. Las versiones anteriores no se eliminan. |

## CU-08 (modificado)
Obtiene la receta vigente (CU-13). Si no existe, alerta a la propietaria y no descuenta. Si un insumo queda bajo el
mínimo, marca el producto «Agotado». Ver `modelo/secuencia_CU-08_v1.1.puml`.
