DELETE FROM Ventas_Detalle
WHERE VD_ProdId IN
(SELECT Prod_ID FROM Productos WHERE Prod_Status=1);

/* Eliminar datos de VentasDetalle donde
VD_prodID se encuentre en esta subconsulta */