GO
CREATE PROCEDURE docente_x_materia_x_escuela_create
    @id_docente INT,
    @id_materia INT,
    @id_escuela INT
AS
BEGIN
    INSERT INTO docente_x_materia_x_escuela (id_docente, id_materia, id_escuela)
    VALUES (@id_docente, @id_materia, @id_escuela)
END;

GO
CREATE PROCEDURE docente_x_materia_x_escuela_update
    @id_docente INT,
    @id_materia INT,
    @id_escuela INT,
    @nuevo_id_docente INT,
    @nuevo_id_materia INT,
    @nuevo_id_escuela INT
AS
BEGIN
    UPDATE docente_x_materia_x_escuela
    SET id_docente = @nuevo_id_docente,
        id_materia = @nuevo_id_materia,
        id_escuela = @nuevo_id_escuela
    WHERE id_docente = @id_docente
        AND id_materia = @id_materia
        AND id_escuela = @id_escuela
END;
GO
CREATE PROCEDURE docente_x_materia_x_escuela_delete
    @id_docente INT,
    @id_materia INT,
    @id_escuela INT
AS
BEGIN
    DELETE FROM docente_x_materia_x_escuela
    WHERE id_docente = @id_docente
        AND id_materia = @id_materia
        AND id_escuela = @id_escuela
END;