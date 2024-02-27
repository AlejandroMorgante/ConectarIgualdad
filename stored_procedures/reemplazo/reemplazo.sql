CREATE PROCEDURE reeemplazo_create
    @id_servidor_reemplazado INT,
    @id_servidor_reemplazo INT,
    @fecha_inicio DATE,
    @fecha_final DATE
AS
BEGIN
    INSERT INTO reemplazo (id_servidor_reemplazado, id_servidor_reemplazo, fecha_inicio, fecha_final)
    VALUES (@id_servidor_reemplazado, @id_servidor_reemplazo, @fecha_inicio, @fecha_final)
END;

GO
CREATE PROCEDURE Reemplazos_update
    @id_servidor_reemplazado INT,
    @id_servidor_reemplazo INT,
    @fecha_inicio DATE,
    @fecha_final DATE
AS
BEGIN
    UPDATE reemplazo
    SET fecha_inicio = @fecha_inicio,
        fecha_final = @fecha_final
    WHERE id_servidor_reemplazado = @id_servidor_reemplazado
        AND id_servidor_reemplazo = @id_servidor_reemplazo
END;

GO
CREATE PROCEDURE reemplazo_delete
    @id_servidor_reemplazado INT,
    @id_servidor_reemplazo INT
AS
BEGIN
    DELETE FROM reemplazo
    WHERE id_servidor_reemplazado = @id_servidor_reemplazado
        AND id_servidor_reemplazo = @id_servidor_reemplazo
END;