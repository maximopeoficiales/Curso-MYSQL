/* IF (parametro evaluado,true,false)*/
SELECT Prod_Id,Prod_Descripcion,
IF(Prod_Status=1,'Habilitado','Deshabilitado') AS Estado FROM Productos;

/* CASE ATRIBUTO 
        WHEN CASO1 THEN 'Valor a asignar
        ELSE VALOR_DEFAULT
        END'*/
/* En las opciones de asignacion de valor tambien se pueden ejecutar operaciones */        
SELECT Prod_id,Prod_Descripcion,CASE Prod_Status 
                                WHEN 1 THEN 'Habilitado'
                                WHEN 0 THEN 'Deshabilitado'
                                ELSE 'Otro Estado'
                                END AS Estado
FROM Productos;

/* SUBSTRING  obtiene un parte del String SUBSTR(Atributo,inicio,final) */
SELECT Prod_ID,Prod_Descripcion,UCASE(CASE SUBSTR(Prod_Descripcion,1,1)
                                            WHEN 'A' THEN 'letra a'
                                            WHEN 'B' THEN 'letra b'
                                            ELSE 'otra letra bro'
                                        END) AS SUBSTRING
FROM PRODUCTOS;

/* Obtener Fechas del Sistema */

SELECT CURRENT_DATE;/* FECHA ACTUAL */ 
SELECT CURRENT_TIME; /* HORA */
SELECT CURRENT_TIMESTAMP;/* DIA Y TIEMPO */
SELECT DATABASE();/* NOMBRE DE LA BD ACTUAL */

/* DATEDIFF(FECHA MAYOR, FECHA MENOR) */
SELECT DATEDIFF(CURRENT_DATE,Ventas_Fecha) AS Fechas,Ventas_NroFactura FROM Ventas;

/* DAYOFWEEK  */
SELECT DAYOFWEEK(CURRENT_DATE) AS Fechas,Ventas_NroFactura FROM Ventas GROUP BY Fechas;
