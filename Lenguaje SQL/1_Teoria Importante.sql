/* QUIERES BUSCAR EN VARIOS CAMPOS Y CON ALGUN TIPO DE CLAVE */
Select prod_id , prod_description, prod_color
FROM  Productos WHERE CONCAT(prod_description,prod_color) LIKE '%AD%';

/* Modificar los campos de titulo que ve el usuario final */
/* UNIR TABLAS SOLO CON WHERE SIEMPRE QUE LOS NOMBRES NO SEAN REPETIDOS */
Select ventas_fecha as 'Fecha',Ventas_nroFactura as 'Numero Factura',Ventas_CLID as 'IDCliente'
FROM ventas,clientes WHERE ventas_clid= Clid_id;

/* Buscar en por mes */
select * from cliente_servicio where month(fecha_instalacion)=10;

/* Normalizacion 
-No se pueden repetir datos
-una tabla secundaria debe depender de la tabla principal no viceversa
-Los datos que se repiten son el problema y la solucion


*/
/* Consejos */
/* 
-Siempre es conveniente usar indexar por numeros
-Cuando el campo no se rellene es mejor que motor de base datos lo rellene.
-Poner si puede o no puede ser nulo
-Nunca borrar registros de la tabla master, es mejor ponerle un campo status que serian de tipo bit
-Es mejor hacer busquedas por indices de tipo unique que hacer por uno fulltext
-Crear un tabla de resumen donde se visualizen totales
 */

 /* Consulta */