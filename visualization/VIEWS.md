
## VIEWS
### Docentes que dieron más talleres que la media
```sql
SELECT * FROM docentes_que_dieron_mas_talleres_que_la_media
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

<br />

### Cantidad de talleres por escuela 
```sql
SELECT * FROM cantidad_de_talleres_por_escuela
```

```sql
SELECT * FROM cantidad_de_talleres_por_escuela ORDER BY cantidad_talleres DESC
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/d2134bd0-65cf-4e69-b259-2458ebe7a36f)

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

<br />

### Talleres sin fecha o no realizados hasta la fecha actual
```sql
SELECT * FROM talleres_no_realizados
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/cf4cfd06-bc9a-4675-9fe8-a197280d1cd3)

<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW talleres_no_realizados AS
SELECT t.id_taller,t.nombre, t.duracion_minutos, etd.fecha  FROM taller t 
LEFT JOIN escuela_x_taller_x_docente etd ON etd.id_taller = t.id_taller 
WHERE t.id_taller NOT IN (
    SELECT id_taller FROM escuela_x_taller_x_docente
) OR 
GETDATE() < etd.fecha
  ```
</details>

<br />

### Cantidad de docentes por servidor
```sql
SELECT * FROM cantidad_de_docentes_por_servidor
```

```sql
SELECT * FROM cantidad_de_docentes_por_servidor ORDER BY cantidad_docentes DESC
```

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/460ddd51-724b-4398-9d7e-aa8c60cc6f75)


<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW cantidad_de_docentes_por_servidor AS 
SELECT s.id_servidor, s.nombre, COUNT(d.id_docente) as cantidad_docentes FROM servidor s 
LEFT JOIN docente d ON d.id_servidor = s.id_servidor 
GROUP BY s.id_servidor, s.nombre
  ```
</details>

<br />

### Servidores que estan actualmente siendo reemplazados
```sql
SELECT * FROM servidores_reemplazados
```

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/9f866fd2-cafb-4be9-a49c-5d35e1430f64)


<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE VIEW servidores_reemplazados AS
SELECT s.* FROM servidor s
WHERE s.estado_flg = 0 AND EXISTS (
    SELECT * FROM reemplazo r 
    WHERE r.id_servidor_reemplazado = s.id_servidor
    AND GETDATE() BETWEEN r.fecha_inicio AND r.fecha_final 
)
  ```
</details>



#### [STORE_PROCEDURES](STORE_PROCEDURES.md)
