-- Crear un nuevo taller
CREATE PROCEDURE taller_create
    @duracion_minutos INT,
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO taller (duracion_minutos, nombre)
    VALUES (@duracion_minutos, @nombre)
END;

-- Modificar un taller existente
CREATE PROCEDURE taller_update
    @id_taller INT,
    @duracion_minutos INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE taller
    SET duracion_minutos = @duracion_minutos,
        nombre = @nombre
    WHERE id_taller = @id_taller
END;

-- Eliminar un taller existente
CREATE PROCEDURE taller_delete
    @id_taller INT
AS
BEGIN
    DELETE FROM taller
    WHERE id_taller = @id_taller
END;