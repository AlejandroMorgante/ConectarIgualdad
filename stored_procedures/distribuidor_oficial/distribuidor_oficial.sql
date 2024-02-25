
-- Crear un nuevo distribuidor oficial
CREATE PROCEDURE distribuidor_oficial_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO distribuidor_oficial (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar un distribuidor oficial existente
CREATE PROCEDURE distribuidor_oficial_update
    @id_distribuidor_oficial INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE distribuidor_oficial
    SET nombre = @nombre
    WHERE id_distribuidor_oficial = @id_distribuidor_oficial
END;
GO
-- Eliminar un distribuidor oficial existente
CREATE PROCEDURE distribuidor_oficial_delete
    @id_distribuidor_oficial INT
AS
BEGIN
    DELETE FROM distribuidor_oficial
    WHERE id_distribuidor_oficial = @id_distribuidor_oficial
END;