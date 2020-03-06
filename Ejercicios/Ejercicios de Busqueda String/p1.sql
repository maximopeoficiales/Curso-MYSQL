/* Mostrar todos los productos donde la descripcion,color o el nombre del proveedor 
tenga la palabra ferro */
SELECT prod_id,prod_descripcion,prov_nombre FROM productos 
JOIN proveedores ON Prov_id=Prod_ProvId
WHERE CONCAT(Prod_descripcion,prod_color,prov_nombre) LIKE '%ferro%'

/* Muestra todos los productos que fueron vendidos
y que tenga la palabra CINTA */
SELECT Prod_id AS Codigo,
	    Prod_Descripcion AS Descripcion
FROM Productos
WHERE Prod_Id IN(SELECT VD_ProdId FROM ventas_detalle) AND
		Prod_Descripcion LIKE '%CINTA%';

/* EJEMPLO OPCIONAL */
SELECT Prod_id AS Codigo,
		Prod_Descripcion AS Descripcion
		FROM Productos
WHERE EXISTS (SELECT * FROM ventas_detalle WHERE vd_ProdID=698) AND
		Prod_Descripcion LIKE '%CINTA%';