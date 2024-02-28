
## QUERIES
#### Docentes que dieron más talleres que la media
```
select * from docentes_que_dieron_mas_talleres_que_la_media
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/27cf77af-d52d-4643-948a-e2dd75e22fe4)

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

#### servidores que fueron reemplazados mas de X cantidad de veces
```
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

#### cantidad de talleres por escuela 
```
select * from cantidad_de_talleres_por_escuela
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

#### distribuidores mas oficiales
```
select * from distribuidores_mas_populares
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

#### docentes sin equipo
```
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

#### escuelas sin talleres
```
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

#### aplicaciones no usadas
```
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

#### cantidad de docentes por servidor
```
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

#### servidores reemplazados entre fechas 
```
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

#### talleres dictados en una fecha determinada
```
exec talleres_dictados_en_escuela_fecha '2024-01-01'
```
