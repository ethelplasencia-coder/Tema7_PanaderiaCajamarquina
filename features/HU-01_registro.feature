# language: es
# Trazabilidad: HU-01 ← RF01 | CU-01
Característica: HU-01 Registrar cuenta e iniciar sesión

  Escenario: PR-01 Registro con correo o celular
    Cuando el cliente se registra con el celular "987654321" y una contraseña válida
    Entonces el sistema crea la cuenta y abre la sesión

  Escenario: PR-02 Identificador repetido
    Dado que ya existe una cuenta con el correo "ana@correo.pe"
    Cuando otro cliente intenta registrarse con ese correo
    Entonces el sistema no crea la cuenta y muestra "El correo ya está registrado"

  Escenario: PR-03 Credenciales incorrectas
    Cuando el cliente inicia sesión con una contraseña incorrecta
    Entonces el sistema no abre la sesión y muestra "Usuario o contraseña incorrectos"

