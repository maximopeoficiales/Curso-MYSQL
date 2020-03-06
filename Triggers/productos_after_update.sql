/* Guarda un historial de la tabla productos cada vez que se modifique el precio */
CREATE DEFINER=`root`@`localhost` TRIGGER `productos_after_update` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
	IF NEW.Prod_Precio <> OLD.Prod_Precio THEN
		INSERT INTO productos_historial (PH_ProdId,PH_PrecioANT,PH_PrecioNEW,
													PH_Usuario) VALUES
		(NEW.Prod_Id, OLD.Prod_Precio, NEW.Prod_Precio, CURRENT_USER);
	END IF;
END