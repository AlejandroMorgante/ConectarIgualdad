GO 
CREATE PROCEDURE equipo_x_aplicacion_create
    @id_equipo INT,
    @id_aplicacion INT
AS
BEGIN
    INSERT INTO equipo_x_aplicacion (id_equipo, id_aplicacion)
    VALUES (@id_equipo, @id_aplicacion)
END;
GO

CREATE PROCEDURE equipo_x_aplicacion_delete
    @id_equipo INT,
    @id_aplicacion INT
AS
BEGIN
    DELETE FROM equipo_x_aplicacion
    WHERE id_equipo = @id_equipo
        AND id_aplicacion = @id_aplicacion
END;
GO

CREATE PROCEDURE equipo_x_aplicacion_update
    @id_equipo INT,
    @id_aplicacion INT,
    @id_equipo_nuevo INT,
    @id_aplicacion_nuevo INT
AS
BEGIN
    UPDATE equipo_x_aplicacion
    SET id_equipo = @id_equipo_nuevo, id_aplicacion = @id_aplicacion_nuevo
    WHERE id_equipo = @id_equipo AND id_aplicacion = @id_aplicacion
END;
GO
