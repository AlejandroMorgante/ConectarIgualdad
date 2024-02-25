GO
CREATE PROCEDURE docente_create
    @dni INT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @domicilio VARCHAR(50),
    @fecha_nacimiento DATE,
    @id_servidor INT
AS
BEGIN
    INSERT INTO docente (dni, nombre, apellido, domicilio, fecha_nacimiento, id_servidor)
    VALUES (@dni, @nombre, @apellido, @domicilio, @fecha_nacimiento, @id_servidor)
END;

GO
CREATE PROCEDURE docente_update
    @id_docente INT,
    @dni INT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @domicilio VARCHAR(50),
    @fecha_nacimiento DATE,
    @id_servidor INT
AS
BEGIN
    UPDATE docente
    SET dni = @dni,
        nombre = @nombre,
        apellido = @apellido,
        domicilio = @domicilio,
        fecha_nacimiento = @fecha_nacimiento,
        id_servidor = @id_servidor
    WHERE id_docente = @id_docente
END;

GO
CREATE PROCEDURE docente_delete
    @id_docente INT
AS
BEGIN
    DELETE FROM docente
    WHERE id_docente = @id_docente
END;
