GO
CREATE PROCEDURE escuela_create
    @numero INT,
    @localidad VARCHAR(50),
    @domicilio VARCHAR(50),
    @id_director INT
AS
BEGIN
    INSERT INTO escuela (numero, localidad, domicilio, id_director)
    VALUES (@numero, @localidad, @domicilio, @id_director)
END;
GO
-- Modificar una escuela existente
CREATE PROCEDURE escuela_update
    @id_escuela INT,
    @numero INT,
    @localidad VARCHAR(50),
    @domicilio VARCHAR(50),
    @id_director INT
AS
BEGIN
    UPDATE escuela
    SET numero = @numero,
        localidad = @localidad,
        domicilio = @domicilio,
        id_director = @id_director
    WHERE id_escuela = @id_escuela
END;
GO
-- Eliminar una escuela existente
CREATE PROCEDURE escuela_delete
    @id_escuela INT
AS
BEGIN
    DELETE FROM escuela
    WHERE id_escuela = @id_escuela
END;