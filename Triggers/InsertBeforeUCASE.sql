/* UN trigger es un disparador que se ejecuta cada vez que se hace un create,update,delete */
/* Ejemplo 1 -> Al insertar convierte el nombre a mayuscula antes de la insercion */
/* EL EVENTO PUEDE SER :
1. BEFORE -> ANTES
2. AFTER ->  DESPUES       */

/* NEW.alumno_nombre= es el dato que tu ingresas en insert */
/* OLD = Es el dato antes de un update */

/* Convierte en mayuscula el alumno_nombre antes de la insercion */
CREATE DEFINER=`root`@`localhost` TRIGGER `NombreMayuscula` BEFORE INSERT ON `alumnos` FOR EACH ROW BEGIN
	SET NEW.Alumno_Nombre = UCASE(NEW.Alumno_Nombre);
END