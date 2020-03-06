/* base de datos de prueba */
CREATE DATABASE TestJoin
GO

USE TestJoin
GO

CREATE TABLE Departamentos
(
    Id int,
    Nombre varchar(20)
);

CREATE TABLE Empleados
(
    Nombre varchar(20),
    DepartamentoId int
);

INSERT INTO Departamentos VALUES(31, 'Sales');
INSERT INTO Departamentos VALUES(33, 'Engineering');
INSERT INTO Departamentos VALUES(34, 'Clerical');
INSERT INTO Departamentos VALUES(35, 'Marketing');

INSERT INTO Empleados VALUES('Rafferty', 31);
INSERT INTO Empleados VALUES('Jones', 33);
INSERT INTO Empleados VALUES('Heisenberg', 33);
INSERT INTO Empleados VALUES('Robinson', 34);
INSERT INTO Empleados VALUES('Smith', 34);
INSERT INTO Empleados VALUES('Williams', NULL);


/* FUNCIONA POR EJEMPLO CUANDO QUIERES CONSULTAR PERO
NO TODOS CLIENTES HAN HECHO UN COMPRA PONES LEFT PARA QUE LOS MUESTRE
IGUAL
 */
SELECT * 
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id

/* ME MOSTRA TODOS LOS EMPLEADOS AUNQUE NO TUVIESE DEPARTAMENTO */
SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados E
LEFT JOIN Departamentos D
ON E.DepartamentoId = D.Id

 /* Funciona de forma Inversa*/
/* Me muestra todos los departamentos aunque no tenga un empleado */
 SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados E
RIGHT JOIN Departamentos D
ON E.DepartamentoId = D.Id

/* EMULACION DE FULL JOIN (Union)*/
/* MUESTRA TODOS LOS DATOS AUNQUE NO tengan registros en la otra tabla */
SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados E
LEFT JOIN Departamentos D
ON E.DepartamentoId = D.Id
UNION
 SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados E
RIGHT JOIN Departamentos D
ON E.DepartamentoId = D.Id;
