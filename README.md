# 🛠️ Documentación Oficial de Sinly

> "Sinly es una aplicación de micro ahorro creado por Luis Zambrano para que ahorres y no te gastes todo el dinero, la verdad no me importa solo quiero que lo uses para ganar con las comisiones."

## 🚀 Stack Tecnológico

| Componente | Tecnología / Patrón |
| :--- | :--- |
| **Frontend Framework** | Flutter |
| **Lenguaje** | Dart |
| **Arquitectura de navegación** | Rutas nativas |
| **Estilo de UI** | Zen-Minimalist / Glassmorphism (Fondo Morado) |

## 📂 Mapa de Archivos del Proyecto

Esta es la estructura real y actual del proyecto:

```text
Sinly/
├── assets/
│   └── images/
│       └── SinlyLogo.png         # Logotipo de la aplicación
├── lib/
│   ├── main.dart                 # Punto de entrada y configuración del tema
│   ├── routes/
│   │   └── app_routes.dart       # Gestor centralizado de navegación
│   └── screens/
│       ├── home_screen.dart      # Pantalla principal: micro-ahorro, glassmorphism y barra con logo
│       └── info_screen.dart      # Vista estática con la información honesta del desarrollador
└── pubspec.yaml                  # Configuración de dependencias y registro de assets
```

## 🧠 Lógica Principal de Estado

La lógica central de la aplicación se encuentra en el `HomeScreen`, donde se maneja el estado del micro-ahorro:

- **Variable de Estado**: Se utiliza una variable local `currentBalance` para mantener el valor actual del saldo.
- **Operaciones**:
  - **Sumar**: Agrega dinero al saldo simulando un ingreso.
  - **Restar**: Descuenta dinero simulando un gasto.
  - **Resetear**: Restablece el saldo a `$0.00`.
- **Actualización de UI**: Las operaciones invocan `setState` para actualizar la vista de forma instantánea.

## Comandos de Instalación y Ejecución

Para preparar el entorno y ejecutar la aplicación localmente, sigue estos pasos:

1. **Abrir una terminal** en la raíz del proyecto (`Sinly/`).
2. **Instalar las dependencias y empaquetar los recursos (como las imágenes):**
   ```bash
   flutter pub get
   ```
3. **Ejecutar la aplicación** (Asegúrate de tener un emulador abierto, dispositivo físico conectado, o la ejecución en Chrome/Windows habilitada):
   ```bash
   flutter run
   ```

*(Nota: Si agregas nuevas imágenes a la carpeta `assets/images/`, recuerda detener la aplicación por completo y volver a correr `flutter run` para que Flutter las reconozca).*