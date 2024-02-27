
## QUERIES
#### Docentes que dieron más talleres que la media
```
select * from docentes_que_dieron_mas_talleres_que_la_media
```
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/27cf77af-d52d-4643-948a-e2dd75e22fe4)


#### servidores_reemplazados
```
select * from servidores_reemplazados
```

#### cantidad de talleres por escuela 
```
select * from cantidad_de_talleres_por_escuela
```

#### distribuidores mas oficiales
```
select * from distribuidores_mas_populares
```

#### docentes sin equipo
```
select * from docentes_sin_equipo
```

#### escuelas sin talleres
```
select * from escuela_sin_talleres
```

#### aplicaciones no usadas
```
select * from aplicaciones_no_usadas
```

#### cantidad de docentes por servidor
```
select * from cantidad_de_docentes_por_servidor
```

#### servidores reemplazados entre fechas 
```
exec servidores_reemplazados_entre '2024-01-01' and '2024-03-03'
```

#### talleres dictados en una fecha determinada
```
exec talleres_dictados_en_escuela_fecha '2024-01-01'
```
