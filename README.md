# Conectar Igualdad 💻
El programa Conectar/Igualdad del Ministerio de Educación ha permitido que los docentes de escuelas primarias y secundarias reciban una computadora para desarrollar sus tareas docentes. De cada docente, sabemos su DNI (único), nombre y apellido, domicilio y fecha de nacimiento, y en qué materias dicta clases. A su vez, sabemos que cada computadora tiene un identificador único, capacidad RAM de memoria, y su disco rígido, del cual sabemos la marca y capacidad.

Cada computadora, a su vez, tiene instalados al menos una o varias aplicaciones, de los cuales sabemos su nombre y número de versión (ambos atributos combinados permiten identificar cada aplicación en forma univoca), el distribuidor oficial y cuánta capacidad de disco necesita para ser instalado. Una aplicación puede no estar instalado en una computadora, pero puede estar instalada en varias computadoras.

Un solo docente tiene asignada una sola computadora, y una computadora es utilizada por un solo docente. A su vez, se sabe que los docentes dictan varios talleres con las computadoras asignadas. Cada taller tiene un nombre, una duración y los recursos que necesita (proyector, pantalla, wifi, etc.). El nombre del taller no es único y puede repetirse entre diferentes talleres. Sin embargo, cada taller es dictado por solamente un docente.

Los talleres se dictan en diferentes escuelas del país. En una escuela, se dicta al menos un taller, y pueden dictarse varios. El mismo taller puede dictarse varias veces en la misma escuela en diferentes fechas, y nos interesa tener registro de cada fecha en la que se realizó cada taller. A su vez, un taller se dicta en varias escuelas, pero puede haber talles que no se dictaron nunca.

De las escuelas, sabemos el número y la localidad (combinación que la identifica en forma univoca), orientaciones (si es bachillerato, técnico, comercial, etc. o combinación de las orientaciones), domicilio formado por calle y número, y el nombre del director. Cada docente se conecta a los servidores habilitados por el Ministerio de Educación. Un docente se conecta a un solo servidor, pero un servidor puede tener información de varios docentes. De cada servidor, sabemos el IP (único), nombre, capacidad del disco rígido, marca y oficina en la que se encuentra en el ministerio. Cuando un servidor deja de funcionar, puede ser reemplazado por uno o varios servidores, y un servidor puede reemplazar también a uno o varios servidores. En el caso de los reemplazos, necesitamos saber en qué períodos (fecha de inicio y fecha final) se produjo.

## [Visualization](visualization) 📈


### Nomenclatura
#### Para Procedimientos Almacenados
```
<table_name>.<action>
```
```
#### Para Rupturas de "Many To Many"
<table1>_x_<table2>_x_...<tableN>"
```

![DER CONECTAR IGUALDAD (3)](https://github.com/AlejandroMorgante/ConectarIgualdad/assets/30799094/a85ade35-870c-4915-adf4-517efdc46877)





