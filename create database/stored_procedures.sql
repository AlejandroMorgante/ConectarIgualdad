-- ORIENTACION --
GO
CREATE PROCEDURE orientacion_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO orientacion (nombre)
    VALUES (@nombre)
END;
GO

CREATE PROCEDURE orientacion_update
    @id_orientacion INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE orientacion
    SET nombre = @nombre
    WHERE id_orientacion = @id_orientacion
END;
GO

CREATE PROCEDURE orientacion_delete
    @id_orientacion INT
AS
BEGIN
    DELETE FROM orientacion
    WHERE id_orientacion = @id_orientacion
END;



-- DIRECTOR -- 
GO
CREATE PROCEDURE director_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO director (nombre)
    VALUES (@nombre)
END;
GO

CREATE PROCEDURE director_update
    @id_director INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE director
    SET nombre = @nombre
    WHERE id_director = @id_director
END;
GO

CREATE PROCEDURE director_delete
    @id_director INT
AS
BEGIN
    DELETE FROM director
    WHERE id_director = @id_director
END;


-- ESCUELA -- 
GO
CREATE PROCEDURE escuela_create
    @numero INT,
    @localidad VARCHAR(50),
    @domicilio VARCHAR(50),
    @id_director INT
AS
BEGIN
    INSERT INTO escuela (numero, localidad, domicilio, id_director)
    VALUES (@numero, @localidad, @domicilio, @id_director)
END;
GO

CREATE PROCEDURE escuela_update
    @id_escuela INT,
    @numero INT,
    @localidad VARCHAR(50),
    @domicilio VARCHAR(50),
    @id_director INT
AS
BEGIN
    UPDATE escuela
    SET numero = @numero,
        localidad = @localidad,
        domicilio = @domicilio,
        id_director = @id_director
    WHERE id_escuela = @id_escuela
END;
GO

CREATE PROCEDURE escuela_delete
    @id_escuela INT
AS
BEGIN
    DELETE FROM escuela
    WHERE id_escuela = @id_escuela
END;
GO


-- ESCUELA X ORIENTACION -- 
GO
CREATE PROCEDURE escuela_x_orientacion_create
    @id_escuela INT,
    @id_orientacion INT
AS
BEGIN
    INSERT INTO escuela_x_orientacion (id_escuela, id_orientacion)
    VALUES (@id_escuela, @id_orientacion)
END;
GO

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

CREATE PROCEDURE escuela_x_orientacion_delete
    @id_escuela INT,
    @id_orientacion INT
AS
BEGIN
    DELETE FROM escuela_x_orientacion
    WHERE id_escuela = @id_escuela and id_orientacion = @id_orientacion
END;

-- DISTRIBUIDOR OFICIAL --
GO
CREATE PROCEDURE distribuidor_oficial_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO distribuidor_oficial (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar un distribuidor oficial existente
CREATE PROCEDURE distribuidor_oficial_update
    @id_distribuidor_oficial INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE distribuidor_oficial
    SET nombre = @nombre
    WHERE id_distribuidor_oficial = @id_distribuidor_oficial
END;
GO
-- Eliminar un distribuidor oficial existente
CREATE PROCEDURE distribuidor_oficial_delete
    @id_distribuidor_oficial INT
AS
BEGIN
    DELETE FROM distribuidor_oficial
    WHERE id_distribuidor_oficial = @id_distribuidor_oficial
END;



-- APLICACION -- 
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

-- OFICINA --
GO
CREATE PROCEDURE oficina_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO oficina (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar una oficina existente
CREATE PROCEDURE oficina_update
    @id_oficina INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE oficina
    SET nombre = @nombre
    WHERE id_oficina = @id_oficina
END;
GO
-- Eliminar una oficina existente
CREATE PROCEDURE oficina_delete
    @id_oficina INT
AS
BEGIN
    DELETE FROM oficina
    WHERE id_oficina = @id_oficina
END;


-- DISCO RIGIDO --
GO
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


-- EQUIPO -- 
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


-- APLICACION_X_EQUIPO -- 
GO
CREATE PROCEDURE aplicacion_x_equipo_create
    @id_aplicacion INT,
    @id_equipo INT
AS
BEGIN
    INSERT INTO aplicacion_x_equipo (id_aplicacion, id_equipo)
    VALUES (@id_aplicacion, @id_equipo)
END;
GO

CREATE PROCEDURE aplicacion_x_equipo_delete
    @id_aplicacion INT,
    @id_equipo INT
AS
BEGIN
    DELETE FROM aplicacion_x_equipo
    WHERE id_aplicacion = @id_aplicacion AND id_equipo = @id_equipo
END;
GO

GO
CREATE PROCEDURE aplicacion_x_equipo_update
    @id_aplicacion INT,
    @id_equipo INT,
    @id_aplicacion_nuevo INT,
    @id_equipo_nuevo INT
AS
BEGIN
    UPDATE aplicacion_x_equipo
    SET id_aplicacion = @id_aplicacion_nuevo, id_equipo = @id_equipo_nuevo
    WHERE id_aplicacion = @id_aplicacion AND id_equipo = @id_equipo
END;
GO

-- RECURSO --
GO
CREATE PROCEDURE recurso_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO recurso (nombre)
    VALUES (@nombre)
END;

GO
CREATE PROCEDURE recurso_update
    @id_recurso INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE recurso
    SET nombre = @nombre
    WHERE id_recurso = @id_recurso
END;

GO
CREATE PROCEDURE recurso_delete
    @id_recurso INT
AS
BEGIN
    DELETE FROM recurso
    WHERE id_recurso = @id_recurso
END;


-- TALLER --
GO
CREATE PROCEDURE taller_create
    @duracion_minutos INT,
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO taller (duracion_minutos, nombre)
    VALUES (@duracion_minutos, @nombre)
END;
GO

CREATE PROCEDURE taller_update
    @id_taller INT,
    @duracion_minutos INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE taller
    SET duracion_minutos = @duracion_minutos,
        nombre = @nombre
    WHERE id_taller = @id_taller
END;
GO

CREATE PROCEDURE taller_delete
    @id_taller INT
AS
BEGIN
    DELETE FROM taller
    WHERE id_taller = @id_taller
END;



-- TALLER_X_RECURSO --
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


-- SERVIDOR --
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


-- DOCENTE -- 
GO
CREATE PROCEDURE docente_create
    @dni INT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @domicilio VARCHAR(50),
    @fecha_nacimiento DATE,
    @id_servidor INT
AS
BEGIN
    INSERT INTO docente (dni, nombre, apellido, domicilio, fecha_nacimiento, id_servidor)
    VALUES (@dni, @nombre, @apellido, @domicilio, @fecha_nacimiento, @id_servidor)
END;

GO
CREATE PROCEDURE docente_update
    @id_docente INT,
    @dni INT,
    @nombre VARCHAR(50),
    @apellido VARCHAR(50),
    @domicilio VARCHAR(50),
    @fecha_nacimiento DATE,
    @id_servidor INT
AS
BEGIN
    UPDATE docente
    SET dni = @dni,
        nombre = @nombre,
        apellido = @apellido,
        domicilio = @domicilio,
        fecha_nacimiento = @fecha_nacimiento,
        id_servidor = @id_servidor
    WHERE id_docente = @id_docente
END;

GO
CREATE PROCEDURE docente_delete
    @id_docente INT
AS
BEGIN
    DELETE FROM docente
    WHERE id_docente = @id_docente
END;

-- MATERIA --
GO
CREATE PROCEDURE materia_create
    @nombre VARCHAR(50)
AS
BEGIN
    INSERT INTO materia (nombre)
    VALUES (@nombre)
END;
GO
-- Modificar una materia existente
CREATE PROCEDURE materia_update
    @id_materia INT,
    @nombre VARCHAR(50)
AS
BEGIN
    UPDATE materia
    SET nombre = @nombre
    WHERE id_materia = @id_materia
END;
GO
-- Eliminar una materia existente
CREATE PROCEDURE materia_delete
    @id_materia INT
AS
BEGIN
    DELETE FROM materia
    WHERE id_materia = @id_materia
END;


-- DOCENTE_X_MATERIA_X_ESCUELA -- 
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

-- ESCUELA_X_tALLER_X_DOCENTE -- 
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


-- REEMPLAZO --
GO
CREATE PROCEDURE reemplazo_create
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
CREATE PROCEDURE reemplazo_update
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
