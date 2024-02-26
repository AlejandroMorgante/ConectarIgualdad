GO
CREATE PROCEDURE aplicacion_x_equipo_create
    @id_aplicacion INT,
    @id_equipo INT
AS
BEGIN
    INSERT INTO aplicacion_x_equipo (id_aplicacion, id_equipo)
    VALUES (@id_aplicacion, @id_equipo)
END;
GO

CREATE PROCEDURE aplicacion_x_equipo_delete
    @id_aplicacion INT,
    @id_equipo INT
AS
BEGIN
    DELETE FROM aplicacion_x_equipo
    WHERE id_aplicacion = @id_aplicacion AND id_equipo = @id_equipo
END;
GO

GO
CREATE PROCEDURE aplicacion_x_equipo_update
    @id_aplicacion INT,
    @id_equipo INT,
    @id_aplicacion_nuevo INT,
    @id_equipo_nuevo INT
AS
BEGIN
    UPDATE aplicacion_x_equipo
    SET id_aplicacion = @id_aplicacion_nuevo, id_equipo = @id_equipo_nuevo
    WHERE id_aplicacion = @id_aplicacion AND id_equipo = @id_equipo
END;
GO
