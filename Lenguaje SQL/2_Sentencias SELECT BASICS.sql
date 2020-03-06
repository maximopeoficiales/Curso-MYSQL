/* OPERADORES LOGICOS AND Y OR */
SELECT * FROM  productos
WHERE Prod_Precio>0 AND prod_status=0;
/* Poder del WHERE  */
SELECT * FROM  productos
WHERE Prod_Precio>0 AND (prod_status=0 OR (Prod_Status=1 AND Prod_ProvId=97));
/* Se lee:
MUESTRAME todos los productos DONDE Prod_Precio > 0 Y prod_status= 0 
O SINO QUE (prod_status=1 AND prod_provid=97)*/

SELECT Ventas_Fecha,Ventas_CliID,Ventas_Total FROM ventas 
WHERE Ventas_Fecha BETWEEN '2018-01-04' AND '2018-01-9' 
AND Ventas_CliId<>1 AND Ventas_Total > 1000;  

/* OBSERVACIONES 
1- Se pueden unir tablas sin inner join
2- Se le puede asignar un alias a los datos mostrados
3- Es mejor crear atributos con nombre referenciales para darles un referencia AS*/
SELECT Ventas_Fecha AS 'Fecha',Ventas_NroFactura AS 'Nro. Factura',Ventas_CliId AS 'ID. Cliente',Cli_RazonSocial AS 'Razon_Social', Ventas_Total AS 'Total'
FROM ventas AS v , clientes AS c
WHERE v.Ventas_CliId= c.Cli_Id; 

/*  Apartir de los indices puedo realizar un consulta en mas de 2 tablas (En este caso 5 tablas) */
	SELECT v.Ventas_CliID,c.Cli_RazonSocial,v.Ventas_NroFactura,v.Ventas_Fecha,
				d.VD_ProdId,p.Prod_Descripcion,p.Prod_Color,d.VD_Cantidad,d.VD_Precio,r.Prov_Nombre
	FROM clientes AS c, ventas AS v, ventas_detalle AS d, productos AS p, proveedores AS r
	WHERE v.Ventas_CliId = c.Cli_Id AND d.VD_ProdId=p.Prod_Id AND v.Ventas_Id=d.VD_VentasId AND p.Prod_ProvId=r.Prov_Id;

/*Ordenar de forma ASC O DESC
Ordena de manera desc el campo prod_status y prod_precio(de mayor a menor)*/
SELECT * FROM productos ORDER BY Prod_Status DESC,Prod_Precio DESC;    
/*Ordenar dos atributos de manera DESC en dos tablas unidas*/
SELECT * FROM ventas_detalle,productos WHERE vd_ProdID=Prod_Id
ORDER BY Prod_ProvId DESC,VD_id DESC;



    
