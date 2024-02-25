GO
CREATE PROCEDURE aplicacion_create
    @nombre VARCHAR(50),
    @version VARCHAR(50),
    @disco_requerido_gb INT,
    @id_distribuidor_oficial INT
AS
BEGIN
    INSERT INTO aplicacion (nombre, version, disco_requerido_gb, id_distribuidor_oficial)
    VALUES (@nombre, @version, @disco_requerido_gb, @id_distribuidor_oficial)
END;

GO
CREATE PROCEDURE aplicacion_update
    @id_aplicacion INT,
    @nombre VARCHAR(50),
    @version VARCHAR(50),
    @disco_requerido_gb INT,
    @id_distribuidor_oficial INT
AS
BEGIN
    UPDATE aplicacion
    SET nombre = @nombre,
        version = @version,
        disco_requerido_gb = @disco_requerido_gb,
        id_distribuidor_oficial = @id_distribuidor_oficial
    WHERE id_aplicacion = @id_aplicacion
END;
GO
CREATE PROCEDURE aplicacion_delete
    @id_aplicacion INT
AS
BEGIN
    DELETE FROM aplicacion
    WHERE id_aplicacion = @id_aplicacion
END;