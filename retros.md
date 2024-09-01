# Proyecto Ecommerce MacMasters - Retrospectivas

## Retrospectiva 1 - Configuración Inicial y Desarrollo del Backend

### Lo que salió bien:
- Configuración exitosa del entorno del proyecto, incluyendo Node.js, Express y MySQL.
- Establecimiento del esquema de la base de datos para almacenar inventario de motocicletas, cuentas de usuarios y pedidos.
- Implementación de APIs RESTful para manejar operaciones CRUD básicas para motocicletas y usuarios.

### Lo que podría mejorar:
- La configuración inicial de la base de datos tomó más tiempo del esperado debido a problemas de compatibilidad de versiones con MySQL.
- Necesité más tiempo para investigar las mejores prácticas para estructurar la aplicación Express, lo que llevó a algunas refactorizaciones.

### Acciones a tomar:
- Refactorizar la estructura de la aplicación Express para mejorar su mantenibilidad.
- Crear scripts automatizados para sembrar la base de datos con datos iniciales para pruebas.

## Retrospectiva 2 - Desarrollo del Frontend con EJS

### Lo que salió bien:
- Desarrollo de las páginas principales para el sitio de ecommerce utilizando EJS, incluyendo la página de inicio, listados de productos y detalles de productos.
- Integración exitosa de las APIs del backend con las plantillas EJS para mostrar contenido dinámico.
- Implementación de la autenticación básica de usuarios y la gestión de sesiones.

### Lo que podría mejorar:
- Pasé demasiado tiempo en el diseño de las plantillas EJS, lo que ralentizó el progreso general.
- Encontré problemas con la persistencia de sesiones en diferentes rutas, lo que causó algunos errores en el inicio/cierre de sesión.

### Acciones a tomar:
- Simplificar el proceso de diseño seleccionando un marco de CSS consistente.
- Investigar y solucionar los problemas de persistencia de sesiones para garantizar una experiencia de usuario fluida.

## Retrospectiva 3 - Implementación del Dashboard con React

### Lo que salió bien:
- Configuración del entorno React y creación del diseño inicial del dashboard para gestionar la plataforma de ecommerce.
- Integración del dashboard con las APIs del backend para mostrar datos en tiempo real sobre inventario, pedidos y usuarios.
- Implementación de un diseño responsivo para el dashboard, asegurando la usabilidad en diferentes dispositivos.

### Lo que podría mejorar:
- Enfrenté desafíos al manejar la gestión del estado en React, lo que llevó a una representación inconsistente de datos.
- Tomó más tiempo del esperado configurar el enrutamiento en el dashboard para diferentes secciones administrativas.

### Acciones a tomar:
- Investigar e implementar una solución para la gestión del estado (por ejemplo, Redux o Context API) para mejorar el manejo de datos en el dashboard.
- Refactorizar la configuración de enrutamiento en el dashboard de React para hacer la navegación más intuitiva.

## Retrospectiva 4 - Pruebas y Depuración

### Lo que salió bien:
- Implementación de pruebas unitarias para las APIs del backend y pruebas de integración para los componentes del frontend.
- Identificación y corrección de varios errores críticos tanto en el frontend con EJS como en el dashboard de React.
- Mejora del manejo de errores en el backend, aumentando la robustez de las respuestas de la API.

### Lo que podría mejorar:
- Las pruebas tomaron más tiempo del esperado debido a la falta de una planificación y estrategia de pruebas iniciales.
- Algunos errores solo fueron descubiertos tarde en el proceso, lo que llevó a correcciones de último minuto.

### Acciones a tomar:
- Desarrollar una estrategia de pruebas integral desde el inicio del proceso de desarrollo para futuros proyectos.
- Implementar pipelines de pruebas automatizadas para detectar errores más temprano en el ciclo de desarrollo.

## Retrospectiva 5 - Despliegue Final a rama main y Revisión

### Lo que salió bien:
- El dashboard es completamente funcional, permitiendo a los administradores gestionar productos, pedidos y usuarios de manera efectiva.
- El sitio de ecommerce está en línea y estable, con comentarios positivos de los primeros usuarios.

### Lo que podría mejorar:
- El proceso de despliegue se complicó debido a problemas de configuración específicos del entorno.
- Algunas optimizaciones de rendimiento de último minuto podrían haberse evitado con un perfilado previo.

### Acciones a tomar:
- Documentar el proceso de despliegue para agilizar futuras actualizaciones y versiones.
- Continuar monitoreando el rendimiento y los comentarios de los usuarios para planificar mejoras y nuevas funcionalidades en el futuro.

---

*Esto concluye la documentación de las retrospectivas para el proyecto ecommerce MacMasters. El proyecto refleja una colaboración exitosa de tecnologías backend y frontend, resultando en una plataforma funcional y amigable para los entusiastas de las motocicletas.*
