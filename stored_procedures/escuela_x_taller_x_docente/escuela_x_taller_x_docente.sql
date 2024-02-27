Go
CREATE PROCEDURE escuela_x_taller_x_docente_create
    @id_taller INT,
    @id_escuela INT,
    @id_docente INT,
    @fecha DATE
AS
BEGIN
    INSERT INTO escuela_x_taller_x_docente (id_taller, id_escuela, id_docente, fecha)
    VALUES (@id_taller, @id_escuela, @id_docente, @fecha)
END;

Go
CREATE PROCEDURE escuela_x_taller_x_docente_update
    @id_taller INT,
    @id_escuela INT,
    @id_docente INT,
    @fecha DATE,
    @nuevo_id_taller INT,
    @nuevo_id_escuela INT,
    @nuevo_id_docente INT,
    @nueva_fecha DATE
AS
BEGIN
    UPDATE escuela_x_taller_x_docente
    SET id_taller = @nuevo_id_taller,
        id_escuela = @nuevo_id_escuela,
        id_docente = @nuevo_id_docente,
        fecha = @nueva_fecha
    WHERE id_taller = @id_taller
        AND id_escuela = @id_escuela
        AND id_docente = @id_docente
        AND fecha = @fecha
END;

GO
CREATE PROCEDURE escuela_x_taller_x_docente_delete
    @id_taller INT,
    @id_escuela INT,
    @id_docente INT,
    @fecha DATE
AS
BEGIN
    DELETE FROM escuela_x_taller_x_docente
    WHERE id_taller = @id_taller
        AND id_escuela = @id_escuela
        AND id_docente = @id_docente
        AND fecha = @fecha
END;
