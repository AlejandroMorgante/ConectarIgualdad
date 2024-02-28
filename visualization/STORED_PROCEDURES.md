
## STORED PROCEDURES

### Escuelas que dieron X taller
```sql
EXEC escuelas_que_dieron_taller 3
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/162a36a6-b930-42cd-9a68-8c1affecf86d)

<details>
<summary>
  SQL
</summary>
  
  ```sql
CREATE PROCEDURE escuelas_que_dieron_taller
    @id_taller INT
AS 
BEGIN
    SELECT e.* FROM escuela e 
    JOIN escuela_x_taller_x_docente etd ON etd.id_escuela = e.id_escuela 
    JOIN taller t ON t.id_taller = etd.id_taller
    WHERE etd.id_taller = @id_taller
END
  ```
</details>

 

### Servidores que fueron reemplazados mas de X cantidad de veces
```sql
EXEC servidores_reemplazados_mas_de_inclusive 1
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/9db9dc49-f4c7-4cad-a87c-d6c8b78d6d70)

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
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/4951f9d4-24e3-400f-b22d-4d42328fb3b5)

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



#### [EJEMPOS](EJEMPLOS.md)
