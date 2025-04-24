# todolist

A new Flutter project.

<!-- ! Figma -->
https://www.figma.com/design/EAuaCVc3whYQV7lpLZiFn1/Creeartelo-ToDo-List?node-id=0-1&p=f&t=mKdygktoAFzI59U2-0 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


<!-- * Code challenge 04 Creeartelo “Gestor de Tareas Personales” -->
Desarrollar una aplicación móvil en Flutter que permita al usuario:
    - Agregar tareas
    - Marcar tareas como completadas
    - Eliminar tareas
    - Ver una lista de tareas activas y completadas

Requisitos funcionales
    - Pantalla principal
        - Debe mostrar la lista de tareas activas.
        - Cada tarea debe tener: título, descripción, estado (completada o no).
    - Agregar tarea
        - El usuario debe poder ingresar una nueva tarea desde un formulario.
    - Completar tarea
        - El usuario debe poder marcar una tarea como completada desde la lista.
    - Eliminar tarea
        - El usuario debe poder eliminar una tarea desde la lista.
    
    - Filtrar tareas
        - Debe existir una forma de ver:
            - Solo tareas activas
            - Solo tareas completadas
            - Todas las tareas

Persistencia local
    Puede usar almacenamiento local básico (por ejemplo shared_preferences) para guardar las tareas y que no se pierdan al cerrar la app.

Evaluación de estructura y principios
    Estas son las pautas que debe seguir el prospecto:
        - Organización del proyecto
        - Debe crear una estructura de carpetas que considere adecuada. Por ejemplo:
            /lib
            /models
            /screens
            /widgets
            /services
            /utils
<!-- (es un ejemplo de estructura de carpetas, puede ser diferente) -->


<!-- ! Se evaluará que las responsabilidades estén separadas (no todo en main.dart). -->
    - Legibilidad del código
    - Nombres claros en variables, funciones y clases.
    - Comentarios breves cuando algo no sea evidente.
    - Modularidad
    - Se valora que cree widgets personalizados reutilizables.
    - Que no se repita mucho código (uso de funciones auxiliares, por ejemplo).
    - Lógica clara y correcta
    - Debe funcionar correctamente la lógica de agregar, completar y eliminar.

Instrucciones para entrega
    Debe subir el proyecto completo a un repositorio de GitHub (o enviarlo en archivo .zip).
    Adjuntar un pequeño documento README.md que explique:
        - Cómo correr el proyecto
        - Cómo estructuró el código
        - Qué partes considera que podría mejorar
        - Qué aprendió durante la prueba