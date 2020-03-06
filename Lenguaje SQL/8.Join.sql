/* LOS JOINS SON PARA RELACIONAR TABLAS Y MOSTRAR MAS DATOS */
/* ACUERDATE DEL ORDEN DE RELACION */
SELECT Ventas_Fecha, Ventas_NroFactura,Ventas_CliId,Cli_RazonSocial,
VD_ProdID,Prod_Descripcion,Prod_ProvID,Prov_Nombre,VD_Cantidad,VD_Precio,(VD_Cantidad* VD_Precio) AS Parcial
FROM Ventas
    JOIN Ventas_Detalle ON VD_VentasId= Ventas_ID
    JOIN Productos ON VD_ProdId= Prod_ID
    JOIN Proveedores ON Prod_ProvId= Prov_ID
    JOIN Clientes ON Ventas_CliId= Cli_Id;

/*Ejemplo 2  */

SELECT nom_alu,edad_alu,sem_alu,nom_c,nom_p,nom_m
FROM  Alumno INNER JOIN carrera on Alumno.clave_c1=Carrera.Clave_c
INNER JOIN  alu_pro ON alum_pro.mat_alu1= Alumno.mat_alu
INNER JOIN Profesor on profesor.clave_p = Alu_pro.clave_p1
/* ETC */
/* Siempre al relacionar bien los datos*/