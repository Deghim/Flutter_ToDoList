# todolist

<!-- ! Figma -->
https://www.figma.com/design/EAuaCVc3whYQV7lpLZiFn1/Creeartelo-ToDo-List?node-id=0-1&p=f&t=mKdygktoAFzI59U2-0 

<!-- ! Evidencia Visual -->
https://youtube.com/shorts/jz8O2OM4wcE?feature=share

<!-- * Instrucciones para entrega -->
Debe subir el proyecto completo a un repositorio de GitHub (o enviarlo en archivo .zip).
Adjuntar un pequeño documento README.md que explique:
A.- Cómo correr el proyecto
    <!-- // Asumiendo el uso de vscode y configuracion estandar -->
    Dentro de la base de codigo el proyecto se ejecuta de la siguiente manera:
        1.- Se abre el proyecto destapando el archivo de main.dart
        2.- Una vez con el archivo abierto se selecciona un dispositivo a emular en la parte inferior derecha
            2.1.- Dentro de la lista de emuladores seleccione el telefono de su eleccion. En este caso se optó por un Iphone 16
        3.- Esperamos que termine la conexion entre el IDE y el dispositivo emulado.
        4.- Ubicamos la flecha apuntando hacia abajo "▼" en la parte superior derecha del editor, hacemos click y seleccionamos la opcion de ejecucion deseada.
    5.- Una vez que el proyecto compile, disfrute de utilizar la aplicación

B.- Cómo estructuró el código
    El codigo se ejecuto de la manera estandar de organizacion de aplicaciones, separando pantallas y widgets para su facil manteninimiento a futuro. El arbol de archivos quedó de la siugietne manera. 
        lib/
        ├── app/
        │   ├── app.dart
        │   └── home.dart
        ├── models/
        │   └── taskmodel.dart
        ├── screens/
        │   ├── info.dart
        │   └── taskspage.dart
        ├── widgets/
        │   ├── filterbar.dart
        │   ├── task.dart
        │   └── taskform.dart
        └── main.dart

C.- Qué partes considera que podría mejorar
    Gestión de estado más robusta
        Use setState en la página de tareas. Cuando la app crezca, podrías utilizar un Provider, Riverpod o Bloc.

    Persistencia escalable
        Esta aplicación es muy util para listas pequeñas, pero al momento de crecer sera cambiar la implementacion a una base de datos mas robusta.

    Más feedback:
        Deshabilitar el botón “Guardar” hasta que el formulario sea válido.

    Accesibilidad
        Hacer la app para múltiples idiomas en lugar de strings hardcodeados.

    Temas y estilos centralizados
        Definir un archivo theme.dart con tu ColorScheme, tipografías y tamaños, en vez de repetir TextStyle en cada widget.

D.- Qué aprendió durante la prueba
    Persistencia sencilla con SharedPreferences
    – Guardar y cargar listas de objetos convirtiéndolas a cadenas JSON.
    – Saber cuándo y cómo invocar SharedPreferences.getInstance(), así como serializar con jsonEncode/jsonDecode.

    Gestión de estado local con setState
    – Levantar el estado (por ejemplo el filtro activo/completado) desde un widget hijo hasta la página principal y pasarlo como parámetro y callback.

    Temas, modo claro/oscuro y detección de estilo del sistema
    – Definir theme, darkTheme y activar themeMode: ThemeMode.system para que la app siga la preferencia del usuario.
    – Leer Theme.of(context).brightness o MediaQuery.of(context).platformBrightness para adaptar manualmente cuando se necesite.

    Animaciones de texto
    – Integrar paquetes como animated_text_kit para efectos de “máquina de escribir” con tipeado y borrado automático.