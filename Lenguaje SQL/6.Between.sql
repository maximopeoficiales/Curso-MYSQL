SELECT Ventas_Fecha, Ventas_CliId,Ventas_Total
FROM ventas
WHERE ventas_CliId BETWEEN 2 AND 100;

SELECT Ventas_Fecha, Ventas_CliId,Ventas_Total
FROM ventas
WHERE Ventas_Fecha BETWEEN '2018-01-01' AND '2018-04-01';