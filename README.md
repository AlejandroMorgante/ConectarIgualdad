# Conectar Igualdad 💻
El programa Conectar/Igualdad del Ministerio de Educación ha permitido que los docentes de escuelas primarias y secundarias reciban una computadora para desarrollar sus tareas docentes. De cada docente, sabemos su DNI (único), nombre y apellido, domicilio y fecha de nacimiento, y en qué materias dicta clases. A su vez, sabemos que cada computadora tiene un identificador único, capacidad RAM de memoria, y su disco rígido, del cual sabemos la marca y capacidad.

Cada computadora, a su vez, tiene instalados al menos una o varias aplicaciones, de los cuales sabemos su nombre y número de versión (ambos atributos combinados permiten identificar cada aplicación en forma univoca), el distribuidor oficial y cuánta capacidad de disco necesita para ser instalado. Una aplicación puede no estar instalado en una computadora, pero puede estar instalada en varias computadoras.

Un solo docente tiene asignada una sola computadora, y una computadora es utilizada por un solo docente. A su vez, se sabe que los docentes dictan varios talleres con las computadoras asignadas. Cada taller tiene un nombre, una duración y los recursos que necesita (proyector, pantalla, wifi, etc.). El nombre del taller no es único y puede repetirse entre diferentes talleres. Sin embargo, cada taller es dictado por solamente un docente.

Los talleres se dictan en diferentes escuelas del país. En una escuela, se dicta al menos un taller, y pueden dictarse varios. El mismo taller puede dictarse varias veces en la misma escuela en diferentes fechas, y nos interesa tener registro de cada fecha en la que se realizó cada taller. A su vez, un taller se dicta en varias escuelas, pero puede haber talles que no se dictaron nunca.

De las escuelas, sabemos el número y la localidad (combinación que la identifica en forma univoca), orientaciones (si es bachillerato, técnico, comercial, etc. o combinación de las orientaciones), domicilio formado por calle y número, y el nombre del director. Cada docente se conecta a los servidores habilitados por el Ministerio de Educación. Un docente se conecta a un solo servidor, pero un servidor puede tener información de varios docentes. De cada servidor, sabemos el IP (único), nombre, capacidad del disco rígido, marca y oficina en la que se encuentra en el ministerio. Cuando un servidor deja de funcionar, puede ser reemplazado por uno o varios servidores, y un servidor puede reemplazar también a uno o varios servidores. En el caso de los reemplazos, necesitamos saber en qué períodos (fecha de inicio y fecha final) se produjo.

### Nomenclatura
#### Para Procedimientos Almacenados
```
<table_name>.<action>
```

#### Para Rupturas de "Many To Many"
```
<table1>_x_<table2>_x_...<tableN>"
```


## [Visualization](visualization) 📈



<hr>

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/50493e77-66b1-4dea-97e1-ca1d59a62741)

<hr>

![Fixed_Conectar_Igualdad drawio](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/160979658/d8b75bd1-bbe9-46c3-b7df-14bb303210df)

<hr>

![41b1429c-e4e6-4ab2-9935-146b5e43193a](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/160979658/93a82a0c-2974-41e6-8db8-45889807442a)

## Diccionario de Datos
![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/88f25f18-430c-4974-8e0c-cb8edfec454f)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/e1c8aaa1-7122-4c75-a9a5-53f706628c16)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/7b0b40ff-3707-4d57-ada8-42a7c35bbe10)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/9242b759-5a4e-4cb8-9e1e-1b297202ff4a)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/e61b782f-5a7a-42c6-94f3-9f08c4770e97)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/dc8a4207-5273-462b-987f-92c1b9362a0e)

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/62363051/aeeb839a-d73b-440e-93c6-e762e92c8008)

## Dashboard

![image](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/2d549402-0edb-459c-8d50-93579a358549)





