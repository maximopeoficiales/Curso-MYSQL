UPDATE Productos SET Prod_Precio=100
WHERE PROD_ProvID IN
(SELECT Prov_ID FROM Proveedores WHERE Prov_CompraSuspendida =0);