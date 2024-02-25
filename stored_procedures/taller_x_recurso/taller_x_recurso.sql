GO
CREATE PROCEDURE taller_x_recurso_create
    @id_recurso INT,
    @id_taller INT
AS
BEGIN
    INSERT INTO taller_x_recurso (id_recurso, id_taller)
    VALUES (@id_recurso, @id_taller)
END;
GO
-- Desasignar un recurso de un taller
CREATE PROCEDURE taller_x_recurso_delete
    @id_recurso INT,
    @id_taller INT
AS
BEGIN
    DELETE FROM taller_x_recurso
    WHERE id_recurso = @id_recurso
        AND id_taller = @id_taller
END;
GO
CREATE PROCEDURE taller_x_recurso_update
    @id_recurso INT,
    @id_taller INT,
    @nuevo_id_recurso INT,
    @nuevo_id_taller INT
AS
BEGIN
    UPDATE taller_x_recurso
    SET id_recurso = @nuevo_id_recurso,
        id_taller = @nuevo_id_taller
    WHERE id_recurso = @id_recurso
        AND id_taller = @id_taller
END;