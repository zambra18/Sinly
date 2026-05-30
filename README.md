# 🛠️ Documentación Oficial de Sinly

> "Sinly es una aplicación de micro ahorro creado por Luis Zambrano para que ahorres y no te gastes todo el dinero, la verdad no me importa solo quiero que lo uses para ganar con las comisiones."

## 🚀 Stack Tecnológico

| Componente | Tecnología / Patrón |
| :--- | :--- |
| **Frontend Framework** | Flutter |
| **Lenguaje** | Dart |
| **Arquitectura de navegación** | Rutas nativas |
| **Estilo de UI** | Premium / Glassmorphism (Fondo Morado `0xFF5B3CC4`) |

## 📂 Mapa de Archivos del Proyecto

Esta es la estructura real y actual del proyecto:

```text
Sinly/
├── assets/
│   └── images/
│       └── SinlyLogo.png         # Logotipo de la aplicación
├── lib/
│   ├── main.dart                 # Punto de entrada y configuración de tema y rutas
│   ├── routes/
│   │   └── app_routes.dart       # Gestor centralizado de navegación (/login, /register, /home, /info)
│   ├── screens/
│   │   ├── login_screen.dart     # Pantalla de inicio de sesión con efecto glassmorphism
│   │   ├── register_screen.dart  # Pantalla de registro con validación de contraseñas
│   │   ├── home_screen.dart      # Pantalla principal: micro-ahorro, saldo visible, botones flotantes
│   │   └── info_screen.dart      # Vista estática con la información honesta del desarrollador
│   └── services/
│       └── auth_store.dart       # Mockup de base de datos en memoria para usuarios y autenticación
└── pubspec.yaml                  # Configuración de dependencias y registro de assets
```

## 🧠 Lógica y Funcionalidades Principales

### Autenticación en Memoria (Mockup)
- **Registro**: A través del `RegisterScreen`, los usuarios ingresan su Nombre, Correo, y Contraseña. El sistema valida que ningún campo esté vacío y que las contraseñas coincidan. Los datos se almacenan temporalmente usando el servicio `AuthStore`.
- **Inicio de Sesión**: `LoginScreen` permite a los usuarios acceder con las credenciales creadas. Al validar el acceso, la app recuerda el nombre del usuario.

### Gestión de Micro-Ahorro
La lógica central financiera se encuentra en el `HomeScreen`:
- **Estado Dinámico**: Se utiliza una variable local `currentBalance` para mantener el valor actual del saldo, y se muestra un saludo personalizado extrayendo el nombre del usuario del `AuthStore`.
- **Operaciones (Glass Buttons)**:
  - **Sumar (+)**: Agrega dinero al saldo simulando un ingreso.
  - **Restar (-)**: Descuenta dinero simulando un gasto.
  - **Resetear (↺)**: Restablece el saldo a `$0.00`.
- **Actualización de UI**: Las operaciones invocan `setState` para actualizar la gran vista del saldo en tiempo real.

## Comandos de Instalación y Ejecución

Para preparar el entorno y ejecutar la aplicación localmente, sigue estos pasos:

1. **Abrir una terminal** en la raíz del proyecto (`Sinly/`).
2. **Instalar las dependencias y empaquetar los recursos:**
   ```bash
   flutter pub get
   ```
3. **Ejecutar la aplicación** (Asegúrate de tener un emulador abierto o la web habilitada):
   ```bash
   flutter run
   ```

*(Nota de Desarrollo: Como la base de datos de usuarios corre en memoria RAM mediante el `AuthStore`, si reinicias por completo la aplicación —Hot Restart— o detienes la terminal, las cuentas creadas se borrarán de forma segura y temporal).*