-- Crear un nuevo director
CREATE PROCEDURE director_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO director (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar un director existente
CREATE PROCEDURE director_update
    @id_director INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE director
    SET nombre = @nombre
    WHERE id_director = @id_director
END;
GO
-- Eliminar un director existente
CREATE PROCEDURE director_delete
    @id_director INT
AS
BEGIN
    DELETE FROM director
    WHERE id_director = @id_director
END;