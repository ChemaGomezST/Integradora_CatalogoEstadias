![](../master/imagenes/logo_groupdigital.jpg)![](../master/imagenes/logo_estadias.jpg)  

# ProyectoEstadias_Terminal
Proyecto de Estadía para Integradora

## Documento de requerimientos de Software 📋
"Catalogo Digital de Estadias"
<br>
Fecha: 16/05/2019
### Proposito 🚀
_Realizar un catálogo digital para tener más rapidez en el proceso de estadías al elegir la empresa a donde quiera ir a hacer su estadía el alumno, de esta manera el estudiante tendrá la opción de escoger de la gran variedad de empresas para realizar su propuesta de estadía, nuestra plataforma informática ayudara a que el alumno conozca el top de las empresas más solicitadas, los beneficios que las empresas brindan como  hospedaje, alimentos, o apoyo económico para los alumnos, así como también incluirá un módulo de información sobre los programas de intercambio como el Programa Delfín, Mexprotec, entre otros, también contara con un apartado de los casos de éxito que existen en el área de TIC, así como también tendrá la funcionalidad de darle la opción de que el alumno se postule a la empresa que le llame más la atención y así pueda subir su curriculum vitae y esto agilizara más el proceso de estadías._
### Alcance del producto / Software 
_El catálogo de estadías alcanzará facilitar el procedimiento de estadías, en cuanto a la postulación del alumno asía a una empresa donde él quiera realizar sus prácticas profesionales, el alumno podrá acceder al catálogo y ver las empresas a las cual se puede ir y en caso de no estar una empresa de su agrado podrá subir una propuesta a la cual postularse subiendo su curriculum, esto para que el coordinador de estadías de continuidad al proceso y también el catalogo podrá actualizarse en cada periodo, donde se actualizara la información y las empresas._
### Referencias 📌
* Especificación de Requisitos Software según el estándar IEEE 830:
	https://www.fdi.ucm.es/profesor/gmendez/docs/is0809/ieee830.pdf
  
* ISO 12207 – Modelos de Ciclos de Vida del Software:
http://estandarescalidadsoftware.blogspot.com/

* Gestión de software:
http://www.fing.edu.uy/inco/cursos/gestsoft/Presentaciones/Evaluacion%20de%20Productos%20-%20G2/Evaluacion%20de%20Productos.pdf

* ISO-9000: 
Gestión y aseguramiento de calidad (conceptos y directrices generales). Recomendaciones externas para aseguramiento de la calidad (ISO 9001, ISO 9002, ISO 9003).

* ISO 9001:
Sistema de calidad- Modelo de aseguramiento de la calidad en diseño/ desarrollo producción, instalación y servicio.
ISO 9126 – Calidad del producto.
El estándar ISO 9126 ha sido desarrollado en un intento de identificar los atributos clave de calidad para el software evalúa los productos de software, esta norma nos indica las características de la calidad y los lineamientos para su uso.

* ISO 14598 – Evaluación de productos de software: 
La norma ISO/IEC 14598 es un estándar que proporciona un marco de trabajo para evaluar la calidad de todo tipo de producto software e indica los requisitos para los métodos de medición y el proceso de evaluación, proporcionando métricas y requisitos para los procesos de evaluación.

* ISO/IEC 25000:
Esta proporciona una guía para el uso de las nuevas series de estándares internacionales, llamados Requisitos y Evaluación de Calidad de Productos de Software (SQuaRE). Es una norma que se basa en la ISO 9126 y 14598 y su principal objetivo es determinar una guía para el desarrollo de los productos de software con la especificación y evaluación de requisitos de calidad. Establece criterios para la especificación de requisitos de calidad de productos software, sus métricas y su evaluación. El producto de software debe incorporar unas características, de tal manera que se garantice su eficiencia de uso a los requerimientos de los clientes. Se recomienda que los requisitos de calidad deban ser proporcionales a las necesidades de la aplicación y lo crítico que sea el correcto funcionamiento del sistema implementado._
http://www.redalyc.org/articulo.oa?id=92218339013

### Funcionalidades del producto 🖇️
 #### REGISTRÓ DE EMPRESAS:

*	Se hará llenado por todos los usuarios siendo: Administrador, Usuario – Estudiante, Coordinador Académico de Estadías y Coordinador Institucional de Estadías. Con el registro de sus características y su descripción de la empresa.

#### REGISTRÓ DE VACANTES DE ESTADÍA:
*	El alumno podrá registrarse teniendo en cuenta si existe una vacante, haciendo referencia al registro de vacantes que el Coordinador Académico de Estadías y Coordinador Institucional de Estadías hayan registrado.

#### REGISTRO DE POSTULACIONES:
 
*	El alumno podrá postularse en alguna empresa de su elección o interés. Cursando 5° cuatrimestre de T.S.U o 10° cuatrimestre Ingeniería, dado el caso que el coordinador haya registrado.

#### REGISTRO DE PROPUESTAS:

* El alumno propondrá una Empresa a la cual quiere realizar su estadía.
* El Coordinador Institucional de Estadías propondrá una de acuerdo al promedio del alumno.
* El Coordinador Académico de Estadías propondrá una de acuerdo al listado de empresas del área. 

#### ASIGNACIÓN DE ESTADÍA:

*	El alumno elige la empresa y verifica si fue aceptado.

#### EVALUAR LA ESTADÍA:

*	El alumno podrá calificar la Estadía publicada en la página mediante una clasificación de estrellas del 1 al 5.
*	El Coordinador Académico de Estadías, el Coordinador Institucional de Estadías y el alumno podrán realizar comentarios de las empresas registradas.

#### LOGUEO E IDENTIFICACIÓN DE USUARIOS:

*	Todos los usuarios podrán loguearse con su matrícula para poder acceder a la página de Estadías.

### Clases y características de usuarios
  
#### Usuario. Administrador	
* Encargado de manipular los datos dentro de la aplicación.
* Tiene Acceso a cualquier parte del sistema 
* Se encarga de dar mantenimiento al sistema.
* Se encarga de revisar los datos que sean ingresados al sistema, tomando en cuenta la fiabilidad con la que cuenta.
* Cuenta con las funciones de Crear, Leer, Eliminar, Actualizar los datos de la base de datos._
#### Usuario Estudiante.	
* Tiene la capacidad de agregar nuevas propuestas de Estadías, pero para ello requiere de aprobación del Administrador.
*	Cuenta con la función de agregar comentarios, así como también dar una calificación a la empresa.
*	Puede registraste en cualquier empresa siempre y cuando se encuentren vacantes disponibles
*	Postulación
*	Entrevista
*	Actualización de datos personales
#### Usuario Coordinador Académico de Estadías
*	Confirma la asignación de alumno a la estadía.
*	Cumple con las normas y procedimientos en materia de seguridad integral, establecidos por la organización.
*	Tramita requisiciones de personal y materiales ante la coordinación administrativa.
*	Aprueba el registro del alumno.
*	Tiene la capacidad de agregar proyectos nuevos para realizar estadías.
*	Cuenta con las funciones de Crear, Leer y Actualizar.
#### Coordinador Institucional de Estadías.
*	Aprueba el registro de las empresas
*	Ingresa las vacantes disponibles para cada empresa por periodo
*	Tiene la capacidad de agregar nuevas propuestas de Estadías, Programas de movilidad, pero para ello requiere de aprobación del Administrador.
*	Puede verificar los registros de los estudiantes en el apartado de Vacantes 
*	Cuenta con las funciones de Crear, Leer y Actualizar.
#### Empresa 	
*	La empresa puede subir su información en la página para poder mostrar las opciones de vacantes disponibles.
*	Cuenta con las funciones de Crear y Actualizar.
*	Tiene la capacidad de agregar proyectos para realizar la Estadía.

### Entorno operativo
En el software de ordenador, un entorno operativo o un entorno de aplicaciones integradas es el entorno en el que los usuarios ejecutan el software de aplicación. El entorno consiste en una interfaz de usuario proporcionada por un gestor de aplicaciones y normalmente una interfaz de programación de aplicaciones (API) al gestor de aplicaciones. 
#### LENOVO IDEA CENTRE B5 SERIES	
* Disco duro de 1 TB
*	Memoria RAM de 6 GB
*	Procesador Intel i5 o i7
#### ANDROID
*	Escrito en núcleo: Java (UI), C (núcleo) C++
* Interfaz Gráfica: Material design
*	Plataformas admitidas: 32 y 64 bits ARM x64, x06, MIPS Y MIPS64.
*	Sistema de gestión de paquetes: Google Play, APK y alternativas como F-Droid y Aptoide.
*	Método de actualización: OTA Play Store.
*	Licencia: Apache 2.0 y GNU GLP 2
*	Estado actual: en desarrollo.
*	Idiomas: multilenguaje.
#### NETBEANS	
*	Edición de código rápido e inteligente
*	Gestión de proyectos fácil y eficiente
*	Desarrollo rápido de la interfaz de usuario
*	Escribe códigos libres de errores
*	Maven
#### GOOGLE CHROME
*	Un cuadro para todo.
*	 Para navegar la web o hacer una búsqueda comienza a escribir en la barra de direcciones. ...
*	Página Nueva pestaña. ...
*	Acceso directo a diferentes aplicaciones. ...
*	Pestañas dinámicas. ...
*	Control de fallas. ...
*	Modo Incógnito. ...
*	Navegación segura. ...
*	Marcadores instantáneos.
#### PHP 
*	Es rápido en sitios web, y por estar insertado en código HTML, el tiempo para procesar y carga una página web es corto.
*	Es gratuito PHP es prueba de que los esfuerzos gratis si existen y puede recibir más de lo que espera por su dinero.
*	Es fácil de usar La sintaxis es simple y fácil de entender y usar, incluso para quienes no son programadores.
#### FIREFOX
*	Protección antiphishing.
*	Bloqueador de ventanas emergentes.
*	Búsqueda integrada.
*	Restaurar sesión.
*	Marcadores dinámicos. 
*	Navegación con pestañas mejorada. 
*	Corrector ortográfico.
*	Canales (RSS)

### Requerimientos funcionales ⌨️
#### 7.1 (Elección de empresa)
Descripción: El alumno podrá ver más características de la empresa que le interese.
Prioridad: Alto de prioridad.
Acciones y comportamientos esperado: El alumno, vera las empresas se espera que pueda ver el giro de cada una.
##### Requerimientos funcionales:
* REQ-1: El catalogo permitirá actualizarse en cada periodo.
* REQ-2: El alumno podrá ver información detallada acerca de la empresa como comentarios de la misma.
* REQ-3: El alumno podrá postularse a la empresa que elija. 
#### 7.2 (Publicación del catálogo)
Descripción: El catalogo digital saldrá en 2 periodos los cuales son TSU y ING.
Prioridad: Alto de prioridad.
Acciones y Comportamiento esperado: Saldrá la publicación del catálogo en sus 2 periodos y se espera que la información este actualizada.
##### Requerimientos Funcionales:
* REQ-1: El catalogo será actualizado en cada periodo.
* REQ-2: El catalogo permitirá que el alumno pueda ver las empresas de acuerdo a su carrera.
#### 7.3 (Postulación a la empresa)
Descripción: El alumno podrá postularse a la empresa que elija o le permitirá subir una propuesta a la cual desea postularse.
Prioridad: Alto de prioridad.
Acciones y Comportamiento esperado: El alumno se postula a la empresa subiendo su CV para que su coordinador de estadías este enterado y facilite el proceso.
##### Requerimiento Funcionales:
* REQ-1: El catalogo digital permitirá al alumno subir su CV.
* REQ-2: Permitirá subir una propuesta de empresa.
* REQ-3: Permitirá al coordinador de estadías por carrera ver a qué empresa se postuló el alumno.  
* REQ-4: Facilitara el proceso de elección de empresa por parte de los alumnos.
#### (Registro de empresa)
Descripción: En base al departamento de vinculación el coordinador de estadías por carrera registrar nuevas empresas o actualiza información.
Prioridad: Alto de prioridad.
Acciones y Comportamiento esperado: El coordinador de estadías registra una empresa con información detallada en donde subirá características de la misma, ubicación, las áreas disponibles, número de vacantes etc.
##### Requerimiento Funcionales:
* REQ-1: El catalogo digital permitirá al coordinador de estadías registrar nuevas empresas.
* REQ-2: Permitirá actualizar información de empresas ya existentes
#### (Logueo e identificación de usuarios)
Descripción: Abra una interfaz de logueo donde se identificará al usuario ya sea alumno o coordinador de estadías. 
Prioridad: Alto de prioridad.
Acciones y Comportamiento esperado: El alumno podrá loguearse con su matrícula para ver las empresas a las cuales podría ir a realizar su estadía, al igual abra un administrador el cual podrá acceder al catálogo con su matrícula y poder realizar cambios o actualizaciones. 
##### Requerimiento Funcionales:
* REQ-1: El catalogo digital identificara al tipo de usuario.
* REQ-2: Lanzara las empresas vinculadas de acuerdo a la carrera del alumno.
* REQ-3: Identificara de que carrera es el alumno.
### Reglas de negocio 
*	El alumno podrá visualizar el catálogo de las empresas
*	El administrador podrá actualizar los catálogos de acuerdo a las temporadas
*	El alumno podrá ingresar sus datos para la postulación de alguna empresa
*	El administrador podrá ver cuantas postulaciones existen en cada empresa
*	El alumno tendrá privilegios para poder elegir alguna empresa de su agrado
*	El administrador podrá agregar empresas al catalogo
*	El alumno podrá agregar empresas al catálogo si estas no se encuentran
*	Si el alumno no se hace una propuesta no podrá postularse
*	El alumno podrá postularse a varias empresas, pero solo será asignado a una
*	El alumno podrá visualizar las coordenadas de las empresas
### Requerimientos de interfaces externas
#### Interfaces de usuario ⌨️
##### LOGUEO E IDENTIFICACIÓN DE USUARIOS
![](../master/imagenes/web1.PNG)
![](../master/imagenes/movil1.PNG) ![](../master/imagenes/movil2.PNG)
* Como se muestra en la imagen de “Interfaz de logueo de usuario” podran ingresar todos los usuarios que el administrador registro en la base de datos. Así se podran viasualizar el catalogo de las empresas disponibles dependiendo del periodo del alumno siendo nivel de T.S.U o Ingenieria.
##### REGISTRÓ DE EMPRESAS
![](../master/imagenes/movil2.PNG)
Como se muestra en la interfaz de Registro de Empresas con el Coordinador Académico de Estadías confirmará la asignación de alumno a la estadía, aprueba el registro del alumno y tiene la capacidad de agregar proyectos nuevos para realizar estadías.
##### REGISTRÓ DE VACANTES DE ESTADÍA.
![](../master/imagenes/web2.PNG)
![](../master/imagenes/web3.PNG)
![](../master/imagenes/movil3.PNG)
El coordinador de estadías registra una empresa con información detallada en donde subirá características de la empresa, como su ubicación, las áreas disponibles, número de vacantes etc.
##### REGISTRO DE POSTULACIONES
El alumno podrá agregar todas las opciones de postulación para realizar su estadía que haya sido de su agrado y ver cuales selecciono.  
##### REGISTRO DE PROPUESTAS
Todos los usuarios podrán ver esta interfaz haciendo el registro de las empresas.
##### ASIGNACIÓN DE ESTADÍA
El coordinador academico de estadias tendra la opción de ver la CV que haya subido el alumno y para que pueda asignarlo a una empresa que el alumno se haya postulado. 
##### EVALUAR LA ESTADÍA
El alumno podra visualizar el catalogo de empresas y calificar la empresa mediante un numero de estrellas del 1-5.
#### Interfaces de hardware
##### Imagen de PC
El usuario podrá utilizar el sistema en cualquier pc. En el sistema operativo que sea de su agrado, teniendo en cuenta que uno de los requerimientos es usar un navegador que puedan ingresar al sitio.  
##### Imagen del sistema operativo de una PC
El usuario podrá ingresar a la aplicación desde el sistema operativo que sea de su agrado.
##### Imagen de teclado y mouse de una PC
Con la ayuda del teclado y el mouse, el usuario ingresara su matrícula al login del sistema, solo con el requisito de estar registrado en la Base de Datos.
#### Interfaces de software 🛠️
##### Interfaz de NetBeans
NetBeans es un entorno de desarrollo integrado libre, hecho principalmente para el lenguaje de programación Java. Existe además un número importante de módulos para extenderlo. NetBeans IDE​ es un producto libre y gratuito sin restricciones de uso. Será una herramienta de desarrollo de software. 
##### Interfaz de MySQL Workbench
MySQL Workbench es una herramienta visual de diseño de bases de datos que integra desarrollo de software, administración de bases de datos, diseño de bases de datos, gestión y mantenimiento para el sistema de base de datos MySQL
#### Interfaces de comunicación
* Requerimientos de las funciones de comunicación que requiere el producto. 
* Protocolo de Email.
- El protocolo SMTP (Simple Mail Transfer Protocol) permite el envío (correo saliente) desde el cliente hacia Internet (el mensaje se transmite, inicialmente, entre servidores de correo).
* Navegadores web
El navegador o explorador web es el vehículo y la principal herramienta de cualquier persona que se adentre en el mundo virtual de internet ya sea usando una computadora o un dispositivo móvil.
* Protocolos de comunicación en red
La arquitectura TCP/IP está compuesta por una serie de capas o niveles en los que se encuentran los protocolos que implementan las funciones necesarias para la comunicación entre dos dispositivos en red. Esta arquitectura es independiente del modelo teórico OSI, aunque tiene muchas similitudes (ambos modelo se basan en capas o niveles). Se puede afirmar que el modelo OSI es el empleado en el estudio de las redes de datos mientras que el modelo o arquitectura TCP/IP es un modelo real empleado es las redes actuales.
* Sockets stream (TCP)
Los sockets stream ofrecen un servicio orientado a conexión, donde los datos se transfieren como un flujo continuo, sin encuadrarlos en registros o bloques. Este tipo de socket se basa en el protocolo TCP que, tal y como se ha comentado antes, es un protocolo orientado a conexión. Esto implica que antes de transmitir información hay que establecer una conexión entre los dos sockets. Mientras uno de los sockets atiende peticiones de conexión (servidor), el otro solicita la conexión (cliente). Una vez que los dos sockets están conectados, ya se puede transmitir datos en ambas direcciones. El protocolo incorpora de forma transparente al programador la corrección de errores. Es decir, si detecta que parte de la información no llegó a su destino correctamente, esta volverá a ser trasmitida. Además, no limita el tamaño máximo de información a transmitir.
###	Requerimientos no funcionales
* La velocidad de ejecución del sistema y la cantidad de memoria necesaria.
* Requisitos de fiabilidad que establecen la tasa de fallos para que el sistema sea aceptable.
* El sistema debe ser capaz de operar adecuadamente con hasta 100.000 usuarios con sesiones concurrentes.
*	Los datos modificados en la base de datos deben ser actualizados para todos los usuarios que acceden en menos de 4 segundos.
*	Los permisos de acceso al sistema podrán ser cambiados solamente por el administrador de acceso a datos.
*	Todos los sistemas deben respaldarse cada 24 horas. Los respaldos deben ser almacenados en una localidad segura.
*	El sistema debe contar con manuales de usuario estructurados adecuadamente.
*	La aplicación web debe poseer un diseño “Responsive” a fin de garantizar la adecuada visualización en múltiples computadores personales, dispositivos tableta y teléfonos inteligentes.
*	El sistema debe poseer interfaces gráficas bien formadas.
*	El sistema debe ser capaz de operar adecuadamente con hasta 10.000 usuarios con sesiones concurrentes.
*	El sistema debe contar con un módulo de ayuda en línea.
### Glosario✒️
##### Currículum: 
Currículo o curriculum vitae es un documento que presenta las habilidades, formación y experiencia laboral de una persona, con el fin de optar a un puesto de trabajo.
##### Logueo: 
En el ámbito de seguridad informática, login o logon es el proceso mediante el cual se controla el acceso individual a un sistema informático mediante la identificación del usuario utilizando credenciales provistas por el usuario. 
##### Hardware: 
La palabra hardware en informática se refiere a las partes físicas, tangibles, de un sistema informático; sus componentes eléctricos, electrónicos, electromecánicos y mecánicos.
##### Software:
Se conoce como software al soporte lógico de un sistema informático, que comprende el conjunto de los componentes lógicos necesarios que hacen posible la realización de tareas específicas, en contraposición a los componentes físicos que son llamados hardware.
##### Catálogo Digital: 
E-book, o libro electrónico como es su significado directo al español, alude a la versión digital o computacional de un ejemplar impreso o físico, ya sea de libro, manual, catálogo o cualquier material compuesto de páginas u hojas.
##### Programa Delfín: 
Se creó en 1995 con el objetivo fortalecer la cultura de colaboración entre las Instituciones de Educación Superior y Centros de Investigación integrantes del Programa, a través de la movilidad de profesores-investigadores, estudiantes y de la divulgación de productos científicos y tecnológicos.
##### Estadía Académica: 
Consiste en el período durante el cual el estudiante aplica sus conocimientos en el desarrollo de un proyecto, acorde a las necesidades de una empresa, como parte de su formación profesional y de acuerdo a los planes de estudio vigentes que corresponda.
##### Norma:
Las normas son documentos técnico-legales con las siguientes características: Contienen especificaciones técnicas de aplicación voluntaria. Son elaborados por consenso de las partes interesadas: Fabricantes. Administraciones. Usuarios y consumidores. Centros de investigación y laboratorios.
##### Requerimiento: 
Es el acto y la consecuencia de requerir. Este verbo, que tiene su origen etimológico en el término latino requiere, refiere a solicitar, pedir, avisar o necesitar algo.
##### Estándar: 
Son acuerdos (normas) documentados que contienen especificaciones técnicas u otros criterios precisos para ser usados consistentemente como reglas, guías, o definiciones de características. para asegurar que los materiales productos, procesos y servicios se ajusten a su propósito.
##### Interfaz: 
Es lo que conocemos en inglés como interfaces. En informática, se utiliza para nombrar a la conexión funcional entre dos sistemas, programas, dispositivos o componentes de cualquier tipo, que proporciona una comunicación de distintos niveles permitiendo el intercambio de información.

### Otros requerimientos 🛠️
*	El inicio de sesión no debe de tardar más de 3 minutos
*	Debe de tener inicios de sesión simultáneamente sin errores
*	La información de los usuarios debe de ser manejada de forma confidencial
*	Debe de funcionar bajo licencias 
*	La información de las empresas es confidencial
*	Debe de permitir realizar las actividades estipuladas
