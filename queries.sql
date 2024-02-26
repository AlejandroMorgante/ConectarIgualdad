use DB_conectar_igualdad

GO
CREATE VIEW docentes_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
LEFT JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
LEFT JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    LEFT JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    LEFT JOIN taller t ON t.id_taller = etd.id_taller
)
GO

GO
CREATE VIEW servidores_reemplazados AS
SELECT s.nombre FROM servidor s
LEFT JOIN reemplazo r ON r.id_servidor_reemplazo = s.id_servidor
WHERE s.estado_flg = 0 AND EXISTS (
    SELECT * FROM reemplazo r WHERE r.id_servidor_reemplazado = s.id_servidor AND  GETDATE() BETWEEN r.fecha_final AND r.fecha_inicio
)
GO


CREATE VIEW cantidad_taller_por_escuela AS
SELECT e.numero, COUNT(t.id_taller) as cantidad_talleres FROM escuela e
LEFT JOIN escuela_x_taller_x_docente etd ON etd.id_escuela = e.id_escuela
LEFT JOIN taller t ON etd.id_taller = t.id_taller
GROUP BY (e.numero)
ORDER BY cantidad_talleres DESC

GO

CREATE VIEW distribuidores_mas_populares AS
SELECT do.nombre, COUNT(ae.id_aplicacion) as cantidad_aplicaciones_usadas FROM distribuidor_oficial do
LEFT JOIN aplicacion a ON a.id_distribuidor_oficial = do.id_distribuidor_oficial
LEFT JOIN aplicacion_x_equipo ae ON ae.id_aplicacion = a.id_aplicacion

GO

CREATE VIEW docentes_sin_equipo
AS SELECT d.nombre FROM docente d
WHERE d.id_docente NOT IN (
    SELECT e.id_docente FROM equipo e
)
GO

CREATE VIEW escuela_sin_talleres AS
SELECT * FROM taller t 
WHERE t.id_taller NOT IN (
    SELECT etd.id_escuela FROM escuela_x_taller_x_docente etd 
)

GO
CREATE VIEW aplicaciones_no_usadas as 
SELECT a.nombre FROM aplicacion a
WHERE a.id_aplicacion NOT IN (
    SELECT ae.id_aplicacion FROM aplicacion_x_equipo ae
)
GO
CREATE VIEW cantidad_docentes_por_servidor AS 
SELECT s.nombre, COUNT(d.id_docente) as cantidad_docentes FROM servidor s 
LEFT JOIN docente d ON d.id_servidor = s.id_servidor 
GROUP BY s.nombre


GO
CREATE PROCEDURE servidores_reemplazados_entre (
    @fecha_inicial DATE,
    @fecha_final DATE
) 
AS
BEGIN 
    SELECT s.* FROM reemplazo sr 
    LEFT JOIN servidor s ON s.id_servidor = sr.id_servidor_reemplazado
    WHERE sr.fecha_final BETWEEN @fecha_final AND @fecha_inicial
END
GO

CREATE PROCEDURE talleres_dictados_en_escuela_fecha (
    @id_escuela INT,
    @fecha DATE = NULL
) 
AS
BEGIN 
    SELECT t.nombre FROM taller t 
    LEFT JOIN escuela_x_taller_x_docente etd ON etd.id_taller = t.id_taller
    LEFT JOIN escuela e ON e.id_escuela = etd.id_escuela
    WHERE etd.fecha = ISNULL(@fecha, GETDATE())
END
GO


-- SELECT * FROM docente_que_mas_dieron_talleres
