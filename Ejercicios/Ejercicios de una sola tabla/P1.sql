/* Mostrar el monto total de ventas por fecha */
SELECT Ventas_fecha AS FECHA,SUM(Ventas_total) AS TOTAL FROM ventas
GROUP BY VENTAS_FECHA;

/* mostrar por mes y año las ventas totales  */
SELECT YEAR(Ventas_fecha) AS AÑO,MONTH(Ventas_fecha) AS MES,SUM(Ventas_total) AS 'TOTAL' FROM ventas
GROUP BY AÑO,MES

/* traer la lista de productos vendidos(id) sin repeticiones
y con el total vendido por cada uno */
/* se debe multiplicar la cantidad por el precio por cada compra */
SELECT VD_ProdId AS Producto,
		SUM((VD_Precio*VD_Cantidad)) AS Total
FROM ventas_detalle
GROUP BY Producto;