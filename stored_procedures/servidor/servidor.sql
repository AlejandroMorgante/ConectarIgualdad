    GO
    CREATE PROCEDURE servidor_create
        @ip VARCHAR(50),
        @nombre VARCHAR(50),
        @id_disco_rigido INT,
        @id_oficina INT,
        @estado_flg BIT
    AS
    BEGIN
        INSERT INTO servidor (ip, nombre, id_disco_rigido, id_oficina, estado_flg)
        VALUES (@ip, @nombre, @id_disco_rigido, @id_oficina, @estado_flg)
    END;

    GO
    CREATE PROCEDURE servidor_update
        @id_servidor INT,
        @ip VARCHAR(50),
        @nombre VARCHAR(50),
        @id_disco_rigido INT,
        @id_oficina INT,
        @estado_flg BIT
    AS
    BEGIN
        UPDATE servidor
        SET ip = @ip,
            nombre = @nombre,
            id_disco_rigido = @id_disco_rigido,
            id_oficina = @id_oficina,
            estado_flg = @estado_flg
        WHERE id_servidor = @id_servidor
    END;

    GO
    CREATE PROCEDURE servidor_delete
        @id_servidor INT
    AS
    BEGIN
        DELETE FROM servidor
        WHERE id_servidor = @id_servidor
    END;