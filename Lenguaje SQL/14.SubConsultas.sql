SELECT Prod_id AS 'Articulos',
        Prod_descripcion AS 'Descripcion',
        (SELECT MAX(Ventas_Fecha)AS UltF FROM Ventas
            JOIN Ventas_Detalle ON Ventas_ID=VD_VentasID
            WHERE Prod_ID=1633) AS UltFecha,
        (SELECT COUNT(DISTINCT(Ventas_CliID)) as vCID FROM VENTAS
            JOIN Ventas_Detalle ON Ventas_ID=VD_VentasID
            WHERE Prod_Id=1633) AS CantCli
FROM Productos WHERE Prod_Id=1633;

/* Se uso estas subconsultas me evito el usar joins en la parte del where
Es una manera mas eficaz de hacer consultar rapidas */

/* Recomendacion cuando quieres que un cliente no pueda ver nada porque no pago alguna suscripcion o algo
CREA UNA TABLA PERMISO QUE TENGA UN ATRIBUTO QUE PUEDA SER UN 1 O 0  Entonces realizas esta subconsulta*/

SELECT Prod_ID AS 'Articulo'
        Prod_Descripcion AS 'Descripcion'
FROM Productos
WHERE Prod_ID > 0 AND (SELECT Permiso FROM Permisos)= 1;