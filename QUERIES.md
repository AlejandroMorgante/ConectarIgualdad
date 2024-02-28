
## QUERIES
### Docentes que dieron más talleres que la media
```sql
select * from docentes_que_dieron_mas_talleres_que_la_media
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/27cf77af-d52d-4643-948a-e2dd75e22fe4)

<details>
<summary>
  Caso contrario
</summary>
  
  ```sql
SELECT * FROM docente d
WHERE d.id_docente NOT IN (
    SELECT dm.id_docente FROM docentes_que_dieron_mas_talleres_que_la_media dm
)
  ```
</details>
<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.id_docente, d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre, d.id_docente
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### servidores que fueron reemplazados mas de X cantidad de veces
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

### Cantidad de talleres por escuela 
```sql
select * from cantidad_de_talleres_por_escuela
```

```sql
SELECT * FROM cantidad_de_talleres_por_escuela ORDER BY cantidad_talleres DESC
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW cantidad_de_talleres_por_escuela AS
SELECT e.numero, e.domicilio, e.localidad, COUNT(t.id_taller) as cantidad_talleres FROM escuela e
JOIN escuela_x_taller_x_docente etd ON etd.id_escuela = e.id_escuela
JOIN taller t ON etd.id_taller = t.id_taller
GROUP BY e.numero, e.domicilio, e.localidad
  ```
</details>
<details>
<summary>
  Otro uso
</summary>
  
  ```sql
CREATE VIEW cantidad_de_talleres_por_escuela AS
SELECT e.numero, e.domicilio, e.localidad, COUNT(t.id_taller) as cantidad_talleres FROM escuela e
JOIN escuela_x_taller_x_docente etd ON etd.id_escuela = e.id_escuela
JOIN taller t ON etd.id_taller = t.id_taller
GROUP BY e.numero, e.domicilio, e.localidad
  ```
</details>

### Talleres sin fecha o no realizados hasta la fecha
```sql
select * from talleres_no_realizados
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW talleres_no_realizados AS
SELECT * FROM taller t 
JOIN escuela_x_taller_x_docente etd ON etd.id_taller = t.id_taller 
WHERE t.id_taller NOT IN (
    SELECT id_taller FROM escuela_x_taller_x_docente
) OR 
GETDATE() < etd.fecha
  ```
</details>

### docentes sin equipo
```sql
select * from docentes_sin_equipo
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
  CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### escuelas sin talleres
```sql
select * from escuela_sin_talleres
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
  CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### aplicaciones no usadas
```sql
select * from aplicaciones_no_usadas
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
  CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### cantidad de docentes por servidor
```sql
select * from cantidad_de_docentes_por_servidor
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
  CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### servidores reemplazados entre fechas 
```sql
exec servidores_reemplazados_entre '2024-01-01' and '2024-03-03'
```

<details>
<summary>
  SQL
</summary>
  
  ```sql
  CREATE VIEW docentes_que_dieron_mas_talleres_que_la_media AS
SELECT d.nombre, COUNT(t.id_taller) as total_talleres FROM docente d 
JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
JOIN taller t ON t.id_taller = etd.id_taller
GROUP BY d.nombre 
HAVING COUNT(t.id_taller) > (
    SELECT COUNT(t.id_taller)/COUNT(d.id_docente) FROM docente d 
    JOIN escuela_x_taller_x_docente etd ON etd.id_docente = d.id_docente
    JOIN taller t ON t.id_taller = etd.id_taller
)
  ```
</details>

### talleres dictados en una fecha determinada
```sql
exec talleres_dictados_en_escuela_fecha '2024-01-01'
```
