GO
CREATE PROCEDURE equipo_create
    @ram_gb INT,
    @id_disco_rigido INT,
    @id_docente INT
AS
BEGIN
    INSERT INTO equipo (ram_gb, id_disco_rigido, id_docente)
    VALUES (@ram_gb, @id_disco_rigido, @id_docente)
END;

GO
CREATE PROCEDURE equipo_update
    @id_equipo INT,
    @ram_gb INT,
    @id_disco_rigido INT,
    @id_docente INT
AS
BEGIN
    UPDATE equipo
    SET ram_gb = @ram_gb,
        id_disco_rigido = @id_disco_rigido,
        id_docente = @id_docente
    WHERE id_equipo = @id_equipo
END;

GO
CREATE PROCEDURE equipo_delete
    @id_equipo INT
AS
BEGIN
    DELETE FROM equipo
    WHERE id_equipo = @id_equipo
END;
GO
