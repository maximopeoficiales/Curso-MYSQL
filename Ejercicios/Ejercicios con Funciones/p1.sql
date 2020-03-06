/* cantidad de productos vendidos */
SELECT SUM(VD_CANTIDAD) AS VENTAS_TOTALES FROM VENTAS_DETALLE;

/* Extraer los productos que se han vendido */
/* Cuentame los producto que no se repitan y se hallan vendido */
SELECT COUNT(DISTINCT(VD_ProdId)) AS CANTIDAD
FROM productos
		JOIN ventas_detalle ON Prod_ID= VD_ProdID;
        
/* Mostrar el total vendido entre las fechas,y con ciertos proveedores */
SELECT SUM((VD_Precio * VD_Cantidad)) AS 'Total_Vendido'
FROM ventas_detalle
	JOIN productos ON VD_ProdID = Prod_Id
	JOIN ventas ON VD_VentasID = Ventas_ID
WHERE (Ventas_Fecha BETWEEN '2018-01-02' AND '2018-01-10') AND 
		(Prod_ProvID BETWEEN 2 AND 100)

/* Mostrar el maximo valor de las ventas_totales de un producto especifico */
SELECT MAX(Ventas_Total) AS 'Valor_Maximo'
FROM ventas
	JOIN ventas_detalle ON VD_VentasID= Ventas_ID
WHERE VD_ProdId=656