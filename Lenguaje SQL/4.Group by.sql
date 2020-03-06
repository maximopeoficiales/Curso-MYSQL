/* VOY A MOSTRAR TALES ATRIBUTOS, AGRUPADOS POR AÑO ,MES */

/* agrupo datos en este caso me mostrara datos agrupados por año y mes   */
SELECT YEAR(ventas_Fecha) AS Año,
		MONTH(Ventas_Fecha) AS Mes,
		SUM(Ventas_Total) AS Total,
		MIN(Ventas_total) AS Minimo,
		Max(Ventas_total) AS Maximo,
		AVG(Ventas_total) AS Promedio,
		COUNT(*) AS Operaciones
FROM Ventas
WHERE Ventas_CliID=1
GROUP BY Año,Mes;

/* VOY A MOSTRAR VENTAS_FECHA,SUMA LAS VENTAS TOTALES Y LAS AGRUPARE POR VENTAS_FECHA */
SELECT Ventas_Fecha,SUM(Ventas_Total) AS TOTAL
FROM Ventas
GROUP BY  VENTAS_FECHA;