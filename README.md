# 🛠️ Documentación Oficial de Sinly

> "Esta es la base arquitectónica de la aplicación, construida aplicando el principio KISS (Keep It Simple, Stupid) para mantener un código limpio, simple y altamente escalable desde su núcleo."

## 🚀 Stack Tecnológico

| Componente | Tecnología / Patrón |
| :--- | :--- |
| **Frontend Framework** | Flutter |
| **Lenguaje** | Dart |
| **Arquitectura de navegación** | Rutas nativas |
| **Estilo de UI** | Zen-Minimalist / Glassmorphism |

## 📂 Mapa de Archivos del Proyecto

Esta es la estructura actual del proyecto correspondiente a la Fase 1:

```text
Sinly/
├── lib/
│   ├── main.dart                 # Punto de entrada de la aplicación y configuración de tema
│   ├── routes/
│   │   └── app_routes.dart       # Gestor centralizado de navegación
│   └── screens/
│       ├── home_screen.dart      # Lógica de estado del contador financiero y botones de acción
│       └── info_screen.dart      # Vista estática con la información del desarrollador
└── README.md                     # Documentación oficial (este archivo)
```

## Lógica Principal de Estado (Fase 1)

La lógica central de la aplicación actualmente se encuentra en el `HomeScreen`, donde se maneja el estado del micro-ahorro:

- **Variable de Estado**: Se utiliza una variable local `currentBalance` para mantener el valor actual del saldo.
- **Operaciones Matemáticas**:
  - **Sumar**: Agrega un valor específico al `currentBalance` simulando un ingreso.
  - **Restar**: Descuenta un valor del `currentBalance` simulando un gasto.
  - **Resetear**: Restablece el valor de `currentBalance` a `0`.
- **Actualización de UI**: Cada una de estas operaciones invoca una actualización de estado (típicamente mediante `setState`), lo que desencadena una reconstrucción de la vista para mostrar el saldo actualizado en pantalla instantáneamente.

## Comandos de Instalación y Ejecución

Para preparar el entorno y ejecutar la aplicación localmente, utiliza los siguientes comandos en la raíz del proyecto:

1. **Instalar las dependencias:**
   ```bash
   flutter pub get
   ```

2. **Ejecutar la aplicación** (asegúrate de tener un emulador abierto o un dispositivo conectado):
   ```bash
   flutter run
   ```