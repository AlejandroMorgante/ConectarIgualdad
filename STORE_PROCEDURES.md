
## STORE PROCEDURES

### Talleres dictados en una fecha determinada
```sql
exec talleres_dictados_en_escuela_fecha '2024-01-01'
```


### Servidores que fueron reemplazados mas de X cantidad de veces
```sql
EXEC servidores_reemplazados_mas_de_inclusive 0
```
<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE PROCEDURE servidores_reemplazados_mas_de_inclusive 
  @cantidad INT
AS
BEGIN
    SELECT s.id_servidor, s.ip, s.nombre, COUNT(r.id_servidor_reemplazado) as veces_reemplazado FROM servidor s 
    JOIN reemplazo r on r.id_servidor_reemplazado = s.id_servidor
    GROUP BY s.id_servidor, s.ip, s.nombre 
    HAVING COUNT(r.id_servidor_reemplazado) >= @cantidad
END
  ```
</details>

### Capacidad sobrante del equipo de un docente
```sql
EXEC docente_espacio_libre_en_disco 5
```
<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE PROCEDURE servidores_reemplazados_mas_de_inclusive 
  @cantidad INT
AS
BEGIN
    CREATE PROCEDURE docente_espacio_libre_en_disco 
    @id_docente INT
AS 
BEGIN
    DECLARE @espacioOcupado INT
 
    SELECT @espacioOcupado = SUM(a.disco_requerido_gb) FROM docente d
    LEFT JOIN equipo e ON d.id_docente = e.id_docente
    LEFT JOIN aplicacion_x_equipo ae ON ae.id_equipo = e.id_equipo 
    LEFT JOIN aplicacion a ON a.id_aplicacion = ae.id_aplicacion
    WHERE d.id_docente = @id_docente
 
    SELECT (dr.capacidad_gb - @espacioOcupado) as docente_espacio_libre_en_disco FROM docente d
    LEFT JOIN equipo e ON d.id_docente = e.id_docente
    LEFT JOIN disco_rigido dr ON dr.id_disco_rigido = e.id_disco_rigido
    WHERE d.id_docente = @id_docente
END 
 
END
  ```
</details>



#### [STORE_PROCEDURES](STORE_PROCEDURES.md)
