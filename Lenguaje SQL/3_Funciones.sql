/*Contar todas las ventas en mes 1 y en el año 2018 */
SELECT COUNT(*) AS 'Cantidad_Ventas' FROM ventas
WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;
 
 SELECT SUM(VENTAS_TOTAL) AS 'SUMA_VENTAS' FROM ventas
 WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;
 
 SELECT MAX(VENTAS_TOTAL) AS 'SUMA_VENTAS' FROM ventas
 WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;
 
 /*Promedio*/
 SELECT AVG(VENTAS_TOTAL) AS 'SUMA_VENTAS' FROM ventas
 WHERE MONTH(Ventas_Fecha)=1 AND YEAR(Ventas_Fecha)=2018;