# language: es
# Trazabilidad: HU-08a ← RF13 | CU-13 | CR-001 | Must
Característica: HU-08a Registrar la receta de un producto
  Como propietaria
  quiero registrar la receta de cada producto con sus insumos y cantidades
  para que el sistema descuente el inventario sin que el cajero intervenga

  Antecedentes:
    Dado que la propietaria inició sesión con el rol "Propietaria"
    Y existen los insumos "Harina", "Azúcar" y "Mantequilla" medidos en gramos

  Escenario: PR-35 Registrar una receta válida
    Cuando registra para "Pan de yema" 40 g de "Harina", 5 g de "Azúcar" y 3 g de "Mantequilla" por unidad
    Entonces el sistema guarda la receta como versión 1 vigente
    Y "Pan de yema" muestra que tiene receta registrada

  Escenario: PR-36 Insumo inexistente
    Cuando agrega a la receta el insumo "Cardamomo" que no existe en el inventario
    Entonces el sistema no guarda la receta
    Y muestra "El insumo Cardamomo no existe en el inventario"

  Escenario: PR-37 Cantidad no válida
    Cuando ingresa 0 g de "Harina" en la receta
    Entonces el sistema muestra "La cantidad debe ser mayor que 0"

  Escenario: PR-38 Editar la receta no altera los pedidos ya descontados
    Dado que "Pan de yema" tiene la receta versión 1 con 40 g de "Harina"
    Y se confirmó un pedido de 20 unidades que descontó 800 g de "Harina"
    Cuando la propietaria cambia la harina a 45 g
    Entonces la receta pasa a la versión 2 vigente
    Y el movimiento del pedido anterior conserva 800 g de "Harina"
    Y un nuevo pedido de 20 unidades descuenta 900 g de "Harina"
