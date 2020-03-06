
BEGIN
/* Declaro variables */
	DECLARE Ganancia DECIMAL(10,2);
	DECLARE _precio DECIMAL(10,2);
	DECLARE _cantidad MEDIUMINT;
	DECLARE _costo DECIMAL(10,2);
	DECLARE Final TINYINT DEFAULT 0;
	
    /* declaro mi cursor(tabla en memoria) */
	DECLARE CV CURSOR FOR
		SELECT VD_Precio,VD_Costo,VD_Cantidad FROM ventas_detalle
			JOIN ventas ON VD_VentasId= Ventas_ID
		WHERE VD_Costo>0 AND YEAR(Ventas_Fecha)=_Ano AND MONTH(Ventas_Fecha)=_Mes;
		
        /* Captura el fin del archivo(fin de resultados del cursor) */
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET Final=1;
		
		SET Ganancia = 0;
        
        OPEN CV;/* abre el cursor */

        WHILE FINAL=0 DO/* mientras que final = 0  */
            FETCH CV INTO _precio,_costo,_cantidad;/* guarda los resultados en estas variables */
            IF Final=0 THEN /* si final = 0 acumula la ganancia */
                SET Ganancia= Ganancia +((_precio - _costo) * _cantidad);
            END IF;

        END WHILE;
        /* cuando final este en 1 se cierra el WHILE */
        CLOSE CV;/* cierro el cursor */

        RETURN Ganancia;/* retorna ganancia */
END

/* Ejecuto una funcion: SELECT GananciasVentas(2018,5) AS GANANCIAS */


/* en otro entorno */
CREATE FUNCTION `GananciasVentas`(
	`_Ano` SMALLINT,
	`_Mes` TINYINT
)
RETURNS DECIMAL(10,2)
LANGUAGE SQL
NOT DETERMINISTIC
READS SQL DATA
SQL SECURITY DEFINER
COMMENT 'Recorre un cursor y va calculando las ganancias'
BEGIN
	DECLARE Ganancia DECIMAL(10,2);
	DECLARE _precio DECIMAL(10,2);
	DECLARE _cantidad MEDIUMINT;
	DECLARE _costo DECIMAL(10,2);
	DECLARE Final TINYINT DEFAULT 0;
	
	DECLARE CV CURSOR FOR
		SELECT VD_Precio,VD_Costo,VD_Cantidad FROM ventas_detalle
			JOIN ventas ON VD_VentasId= Ventas_ID
		WHERE VD_Costo>0 AND YEAR(Ventas_Fecha)=_Ano AND MONTH(Ventas_Fecha)=_Mes;
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET Final=1;
		
		SET Ganancia = 0;

        OPEN CV;

        WHILE FINAL=0 DO
            FETCH CV INTO _precio,_costo,_cantidad;
            IF Final=0 THEN
                SET Ganancia= Ganancia +((_precio - _costo) * _cantidad);
            END IF;

        END WHILE;
        CLOSE CV;
        RETURN Ganancia;
END