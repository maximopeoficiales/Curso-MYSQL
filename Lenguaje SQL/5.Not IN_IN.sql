
/* Compara resultados */
SELECT PROD_ID,PROD_DESCRIPCION FROM productos WHERE PROD_STATUS IN(0);

/* Compara resultados de una columna especifica entre dos consultas */
/* compara el prod_id que no se encuentran en la otra consulta */
SELECT Prod_ID,Prod_Descripcion FROM productos
WHERE Prod_id NOT IN
(SELECT DISTINCT(VD_ProdID) FROM ventas_detalle,ventas 
WHERE vd_VentasID=Ventas_ID AND Ventas_Fecha > '2018-01-01')


/* Uso de distict */
SELECT DISTINCT(Ventas_CliID) FROM ventas; /* en este caso me mostrara datos sin repetirse */

/* MOSTRAR LOS CLIENTES QUE NO HAYAN COMPRADO */
/* Comparo el Cli_ID que no esten Ventas  */
SELECT CLI_ID AS 'Nro_Cliente', Cli_RazonSocial AS NOMBRE
FROM  Clientes
WHERE  CLI_ID NOT IN(SELECT DISTINCT(Ventas_CliID) AS Cliente From Ventas);


/* clientes que si compraron */
SELECT CLI_ID AS 'Nro_Cliente', Cli_RazonSocial AS NOMBRE 
  FROM Clientes 
 WHERE CLI_ID IN(1,5,6,11) 
ORDER BY CLI_ID; 