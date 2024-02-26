-- Crear un nuevo director
CREATE PROCEDURE escuela_x_orientacion_create
    @id_escuela INT,
    @id_orientacion INT
AS
BEGIN
    INSERT INTO escuela_x_orientacion (id_escuela, id_orientacion)
    VALUES (@id_escuela, @id_orientacion)
END;
GO
-- Modificar un director existente
CREATE PROCEDURE escuela_x_orientacion_update
    @id_escuela INT,
    @id_orientacion INT,
    @id_escuela_nuevo INT,
    @id_orientacion_nuevo INT
AS
BEGIN
    UPDATE escuela_x_orientacion
    SET id_escuela = @id_escuela_nuevo, id_orientacion = @id_orientacion_nuevo
    WHERE id_orientacion = @id_orientacion and id_escuela = @id_escuela
END;
GO
-- Eliminar un director existente
CREATE PROCEDURE escuela_x_orientacion_delete
    @id_escuela INT,
    @id_orientacion INT
AS
BEGIN
    DELETE FROM escuela_x_orientacion
    WHERE id_escuela = @id_escuela and id_orientacion = @id_orientacion
END;
