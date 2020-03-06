/* Traer fecha de Factura ,nro de Factura
id del cliente, razon social del cliente y 
el monto total vendido */

SELECT ventas_Fecha, ventas_NroFactura, Ventas_CliID, Cli_RazonSocial,
		Ventas_Total FROM Ventas
		JOIN clientes ON Ventas_CliId=Cli_ID;

/* Manera incorrecta */
SELECT ventas_Fecha, ventas_NroFactura, Ventas_CliID, Cli_RazonSocial,
		Ventas_Total FROM Ventas,Clientes WHERE Ventas_CliId=Cli_ID;

/* Traer fecha de factura, nro factura, id de producto, descripcion de producto
id de proveedor, nombre de proveedor, cantidad, precio unitario y parcial(precio * cantidad) */

/* en el FROM siempre va la tabla principal */
SELECT Ventas_Fecha,Ventas_nroFactura,vd_prodID,Prod_Descripcion,Prod_ProvID,Prov_nombre,VD_Cantidad,VD_Precio,
(vd_precio * vd_cantidad) AS Parcial
FROM Ventas
    JOIN Ventas_detalle ON VD_Ventas_ID = Ventas_ID 
    JOIN Productos ON VD_ProdId=Prod_Id
    JOIN Proveedores ON PROD_PROVID= PROV_ID


/* ejercicio similar  */
    SELECT Ventas_FECHA ,prod_ID,Prod_Descripcion,SUM(VD_CANTIDAD) AS UNIDADES_VENDIDAS
FROM Productos
    JOIN Ventas_detalle ON VD_ProdID = Prod_ID
    JOIN Ventas ON VD_VentasId=Ventas_ID
	WHERE Ventas_FECHA BETWEEN '2018-01-14' AND '2018-01-16'
	GROUP BY (Prod_id)