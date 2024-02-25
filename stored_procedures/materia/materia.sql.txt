-- Crear una nueva materia
CREATE PROCEDURE materia_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO materia (nombre)
    VALUES (@nombre)
END;

-- Modificar una materia existente
CREATE PROCEDURE materia_update
    @id_materia INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE materia
    SET nombre = @nombre
    WHERE id_materia = @id_materia
END;

-- Eliminar una materia existente
CREATE PROCEDURE materia_delete
    @id_materia INT
AS
BEGIN
    DELETE FROM materia
    WHERE id_materia = @id_materia
END;