-- Crear una nueva oficina
CREATE PROCEDURE oficina_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO oficina (nombre)
    VALUES (@nombre)
END;

-- Modificar una oficina existente
CREATE PROCEDURE oficina_update
    @id_oficina INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE oficina
    SET nombre = @nombre
    WHERE id_oficina = @id_oficina
END;

-- Eliminar una oficina existente
CREATE PROCEDURE oficina_delete
    @id_oficina INT
AS
BEGIN
    DELETE FROM oficina
    WHERE id_oficina = @id_oficina
END;