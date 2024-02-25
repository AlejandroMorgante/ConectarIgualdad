-- Crear un nuevo recurso
CREATE PROCEDURE recurso_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO recurso (nombre)
    VALUES (@nombre)
END;

-- Modificar un recurso existente
CREATE PROCEDURE recurso_update
    @id_recurso INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE recurso
    SET nombre = @nombre
    WHERE id_recurso = @id_recurso
END;

-- Eliminar un recurso existente
CREATE PROCEDURE recurso_delete
    @id_recurso INT
AS
BEGIN
    DELETE FROM recurso
    WHERE id_recurso = @id_recurso
END;