-- Crear un nuevo director
CREATE PROCEDURE Director.create_director
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO director (nombre)
    VALUES (@nombre)
END;

-- Modificar un director existente
CREATE PROCEDURE Director.update_director
    @id_director INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE director
    SET nombre = @nombre
    WHERE id_director = @id_director
END;

-- Eliminar un director existente
CREATE PROCEDURE Director.delete_director
    @id_director INT
AS
BEGIN
    DELETE FROM director
    WHERE id_director = @id_director
END;