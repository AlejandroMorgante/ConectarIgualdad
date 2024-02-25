
CREATE PROCEDURE disco_rigido_create
    @marca VARCHAR(50),
    @capacidad_gb INT
AS
BEGIN
    INSERT INTO disco_rigido (marca, capacidad_gb)
    VALUES (@marca, @capacidad_gb)
END;
GO

CREATE PROCEDURE disco_rigido_update
    @id_disco_rigido INT,
    @marca VARCHAR(50),
    @capacidad_gb INT
AS
BEGIN
    UPDATE disco_rigido
    SET marca = @marca,
        capacidad_gb = @capacidad_gb
    WHERE id_disco_rigido = @id_disco_rigido
END;
GO

CREATE PROCEDURE disco_rigido_delete
    @id_disco_rigido INT
AS
BEGIN
    DELETE FROM disco_rigido
    WHERE id_disco_rigido = @id_disco_rigido
END;