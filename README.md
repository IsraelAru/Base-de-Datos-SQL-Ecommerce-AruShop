## INTRODUCCIÓN
Bienvenidos a AruShop un E-Commerce diseñado para generar la base de datos de cualquier negocio de ropa. 
Hoy en dia con toda la tecnologia que tenemos a disposicion se nos hace raro que existan negocios los cuales no dispongan de una base de datos. Por eso con nuestro prototipo de Base de Datos vas a poder despegar tu negocio y llevarlo al siguiente nivel.
 
## OBJETIVOS
El proyecto esta pensado para cualquier tipo de negocio el cual quiera gestionar todos los movimientos que realiza ya sea:
    - Agregar/Actualizar inventario.
    - Gestionar ventas.
    - Obtener un resumen de ventas.
    - Almacenar datos de los clientes. 

## DESCRIPCION DE BASE DE DATOS

Tabla "clientes" 

clave primaria: id (identificador de cada cliente)
sin llaves foraneas

Tabla "articulos"

clave primaria: id (identificador de cada articulo)
sin llaves foraneas

Tabla "ventas"
clave primaria: id (identificador de cada venta)
clave foranea: id_cliente (relacionada con la tabla "clientes")

Tabla "detalle_ventas"
clave primaria: id(identificador de cada detalle de venta)
claves foraneas: id_ventas (relacionada con la tabla "ventas") y id_articulos (relacionada con la tabla "articulos")