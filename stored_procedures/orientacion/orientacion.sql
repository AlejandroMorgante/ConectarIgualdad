-- Crear una nueva orientación
CREATE PROCEDURE orientacion_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO orientacion (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar una orientación existente
CREATE PROCEDURE orientacion_update
    @id_orientacion INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE orientacion
    SET nombre = @nombre
    WHERE id_orientacion = @id_orientacion
END;
GO
-- Eliminar una orientación existente
CREATE PROCEDURE orientacion_delete
    @id_orientacion INT
AS
BEGIN
    DELETE FROM orientacion
    WHERE id_orientacion = @id_orientacion
END;