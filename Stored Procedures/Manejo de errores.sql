/* en heidisql creas los parametros (_IdAlumno,_NomAlumno) */
/* Declara variables "continue" 
Handler es el capturador de errores en este caso el error 1062
Select mostrar el mensaje en caso hay error*/
BEGIN
	DECLARE CONTINUE HANDLER FOR 1062 SELECT "CLAVE YA EXISTENTE NO PUEDES INSERTAR" AS MENSAJE;
	INSERT INTO alumnos (Alumno_Id,Alumno_Nombre) VALUES (_IdAlumno,_NomAlumno);
END

/* en otro entorno seria pero el heidiSQL TE LO genera */
CREATE PROCEDURE `InsertoAlumnos`(
	IN `_IdAlumno` SMALLINT,
	IN `_NomAlumno` VARCHAR(50)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	DECLARE CONTINUE HANDLER FOR 1062 SELECT "CLAVE YA EXISTENTE NO PUEDES INSERTAR" AS MENSAJE;
	INSERT INTO alumnos (Alumno_Id,Alumno_Nombre) VALUES (_IdAlumno,_NomAlumno);
END