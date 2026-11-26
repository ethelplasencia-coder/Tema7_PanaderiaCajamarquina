# Catálogo de requisitos SIPAN

> Fuente: Tema 2 (catálogo vigente). Resumen operativo para la trazabilidad.

## Requisitos funcionales

| ID | Requisito | Prioridad |
|----|-----------|-----------|
| RF01 | El sistema debe permitir al cliente registrarse con correo o celular e iniciar sesión. | M |
| RF02 | El sistema debe mostrar el catálogo de productos indicando cuáles están disponibles y cuáles agotados. | M |
| RF03 | El sistema debe permitir al cliente armar un pedido eligiendo recojo en tienda o delivery. | M |
| RF04 | El sistema debe calcular el total del pedido incluyendo el costo de envío según la zona. | M |
| RF05 | El sistema debe registrar el pago (efectivo, Yape o Plin) y confirmar el pedido con un número único. | M |
| RF06 | El sistema debe permitir al cliente consultar el estado de su pedido y notificarle cada cambio. | M |
| RF07 | El sistema debe permitir al cajero gestionar los pedidos y avanzar sus estados en orden. | M |
| RF08 | **(mod. CR-001)** El sistema debe descontar automáticamente del inventario los insumos utilizados según la receta vigente (RF13), sin intervención del cajero; si el producto no tiene receta, debe confirmar el pedido y alertar a la propietaria. | M |
| RF09 | El sistema debe generar el reporte diario de ventas y pedidos pendientes para la propietaria. | M |
| RF10 | El sistema debe permitir asignar entregas al repartidor y que este consulte solo sus pedidos. | M |
| RF11 | El sistema debe agrupar los pedidos de una misma zona recibidos en una ventana de 20 minutos. | M |
| RF12 | El sistema debe dejar en «pago pendiente» un pago Yape/Plin no confirmado en 60 s, sin descontar insumos y con alerta al cajero. | M |
| RF13 | **(nuevo CR-001)** El sistema debe permitir a la propietaria registrar y editar la receta de cada producto (insumos y cantidad en gramos por unidad vendida). | M |

## Requisitos no funcionales

| ID | Requisito |
|----|-----------|
| RNF01 | Rendimiento: con 50 usuarios concurrentes, la confirmación del pedido responde en ≤ 3 s. |
| RNF02 | Seguridad: comunicación por HTTPS y contraseñas almacenadas cifradas. |
| RNF03 | Usabilidad: un pedido se completa en ≤ 5 pasos (validado en piloto). |
| RNF04 | Disponibilidad mensual ≥ 98 %. |
| RNF05 | Compatibilidad: Chrome, Firefox, Edge y navegadores móviles. |
| RNF06 | Mantenibilidad: agregar un medio de pago sin reescribir el flujo de pedido. |

## Criterios de aceptación agregados (CR-001)

**CA-RF13.** Dado que la propietaria tiene sesión iniciada, cuando registre una receta con al menos un insumo y
cantidades mayores que 0, el sistema guarda la receta como versión vigente. Si el insumo no existe o la cantidad
es 0, no guarda y muestra el motivo.

**CA-RF08 (ampliado).** Si un insumo queda bajo su stock mínimo, el producto pasa a «Agotado».

## Tabla requisito–fase

| Req | Análisis | Diseño | Construcción | Prueba |
|-----|----------|--------|--------------|--------|
| RF01 | ✓ | ✓ | ✓ | ✓ |
| RF02 | ✓ | ✓ | ✓ | ✓ |
| RF03 | ✓ | ✓ | ✓ | ✓ |
| RF04 | ✓ | ✓ | ✓ | ✓ |
| RF05 | ✓ | ✓ | ✓ | ✓ |
| RF06 | ✓ | ✓ | ✓ | ✓ |
| RF07 | ✓ | ✓ | ✓ | ✓ |
| RF08 | ✓ | ✓ | ✓ | ✓ |
| RF09 | ✓ | ✓ | ✓ | ✓ |
| RF10 | ✓ | ✓ | ✓ | ✓ |
| RF11 | ✓ | ✓ | ✓ | ✓ |
| RF12 | ✓ | ✓ | ✓ | ✓ |
| RF13 | ✓ | ✓ | ✓ | ✓ |

> Colisión resuelta (RP-01): el Tema 4 proponía «RF11 registrar recetas», pero RF11 ya existe (agrupar pedidos
> por zona). Por la regla de no reutilización, el nuevo requisito recibe RF13.
