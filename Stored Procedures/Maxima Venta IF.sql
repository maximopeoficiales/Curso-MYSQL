/* 
1. Se declara la var
2. Se le asigna un valor
3. Guarda el Resultado en la var
4. Ejecuta una Condicion y muestra un mensaje
 */
BEGIN
	DECLARE ValorMaximo DECIMAL(10,2);
	SET ValorMaximo=0;
	SELECT MAX(Ventas_Total) INTO ValorMaximo FROM ventas;
	IF ValorMaximo > 1000 THEN
		SELECT "Se superaron los $ 1000 !!" AS Mensaje;
	ELSE
		SELECT "NO superaron los $ 1000 !!" AS Mensaje;
	END IF;
END

/* en otro entorno */
CREATE PROCEDURE `MaximaVenta`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT 'Muestra la maxima venta '
BEGIN
	DECLARE ValorMaximo DECIMAL(10,2);
	SET ValorMaximo=0;
	SELECT MAX(Ventas_Total) INTO ValorMaximo FROM ventas;
	IF ValorMaximo > 1000 THEN
		SELECT "Se superaron los $ 1000 !!" AS Mensaje;
	ELSE
		SELECT "NO superaron los $ 1000 !!" AS Mensaje;
	END IF;
END