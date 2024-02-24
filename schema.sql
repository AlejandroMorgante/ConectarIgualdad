CREATE TABLE oficina (
    id_oficina INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
)
 
CREATE TABLE materia (
    id_materia INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
)
 
CREATE TABLE recurso (
    id_recurso INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
)
 
CREATE TABLE taller (
    id_taller INT PRIMARY KEY IDENTITY,
    duracion_minutos INT,
    nombre VARCHAR(50) 
)
 
CREATE TABLE director (
    id_director INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50),
)
 
CREATE TABLE orientacion (
    id_orientacion INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
)
 
CREATE TABLE disco_rigido (
    id_disco_rigido INT PRIMARY KEY IDENTITY,
    marca VARCHAR(50),
    capacidad_gb INT,
)
 
CREATE TABLE distribuidor_oficial (
    id_distribuidor_oficial INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
)
 
CREATE TABLE servidor (
    id_servidor INT PRIMARY KEY IDENTITY,
    ip VARCHAR(50),
    nombre VARCHAR(50),
    id_disco_rigido INT NOT NULL,
    id_oficina INT NOT NULL,
 
    CONSTRAINT fk_servidor_disco FOREIGN KEY (id_disco_rigido) REFERENCES disco_rigido(id_disco_rigido),
    CONSTRAINT fk_servidor_oficina FOREIGN KEY (id_oficina) REFERENCES oficina(id_oficina)
)
 
CREATE TABLE docente (
    id_docente INT IDENTITY PRIMARY KEY,
    dni INT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    domicilio VARCHAR(50),
    fecha_nacimiento DATE,
    id_servidor INT,
 
    CONSTRAINT fk_docente_servidor FOREIGN KEY (id_servidor) REFERENCES servidor(id_servidor),
)
 
CREATE TABLE equipo (
    id_equipo INT PRIMARY KEY IDENTITY,
    ram_gb INT,
    id_disco_rigido INT NOT NULL,
    id_docente INT NOT NULL,
 
    CONSTRAINT fk_equipo_disco_rigido FOREIGN KEY (id_disco_rigido) REFERENCES disco_rigido(id_disco_rigido),
    CONSTRAINT fk_equipo_docente FOREIGN KEY (id_docente) REFERENCES docente(id_docente),
)
 
CREATE TABLE reemplazo (
    id_servidor_reemplazado INT NOT NULL,
    id_servidor_reemplazo INT NOT NULL,
    fecha_inicio DATE,
    fecha_final DATE,
 
    
    CONSTRAINT fk_servidor_reemplazado FOREIGN KEY (id_servidor_reemplazado) REFERENCES servidor(id_servidor),
    CONSTRAINT fk_servidor_reemplazo FOREIGN KEY (id_servidor_reemplazo) REFERENCES servidor(id_servidor),
    PRIMARY KEY (id_servidor_reemplazado, id_servidor_reemplazo, fecha_inicio, fecha_final)
)
 
CREATE TABLE escuela (
    id_escuela INT PRIMARY KEY IDENTITY,
    numero INT,
    localidad VARCHAR(50),
    domicilio VARCHAR(50),
    id_director INT NOT NULL,
 
    CONSTRAINT fk_escuela_director FOREIGN KEY (id_director) REFERENCES director(id_director),
)
 
CREATE TABLE aplicacion (
    id_aplicacion INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50),
    version VARCHAR(50),
    disco_requerido_gb INT,
    id_distribuidor_oficial INT NOT NULL,
 
    CONSTRAINT fk_aplicacion_distribuidor FOREIGN KEY (id_distribuidor_oficial) REFERENCES distribuidor_oficial(id_distribuidor_oficial),   
)
 
CREATE TABLE escuela_x_orientacion (
    id_escuela INT NOT NULL,
    id_orientacion INT NOT NULL,
 
    CONSTRAINT fk_escuela_x_orientacion_escuela FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela),
    CONSTRAINT fk_escuela_x_orientacion_orientacion FOREIGN KEY (id_orientacion) REFERENCES orientacion(id_orientacion),
    PRIMARY KEY (id_escuela, id_orientacion)
)
 
CREATE TABLE aplicacion_x_equipo (
    id_aplicacion INT NOT NULL,
    id_equipo INT NOT NULL,
 
    CONSTRAINT fk_aplicacion_x_equipo_aplicacion FOREIGN KEY (id_aplicacion) REFERENCES aplicacion(id_aplicacion),
    CONSTRAINT fk_aplicacion_x_equipo_equipo FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo),
    PRIMARY KEY (id_aplicacion, id_equipo)
)
 
CREATE TABLE docente_x_materia_x_escuela (
    id_docente INT NOT NULL,
    id_materia INT NOT NULL,
    id_escuela INT NOT NULL,
 
    CONSTRAINT fk_aplicacion_x_equipo_aplicacion FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela),
    CONSTRAINT fk_aplicacion_x_equipo_materia FOREIGN KEY (id_materia) REFERENCES materia(id_materia),
    CONSTRAINT fk_aplicacion_x_equipo_docente FOREIGN KEY (id_docente) REFERENCES docente(id_docente),
    PRIMARY KEY (id_docente, id_materia, id_escuela)
)
 
CREATE TABLE taller_x_recurso (
    id_recurso INT NOT NULL,
    id_taller INT NOT NULL,
 
    CONSTRAINT fk_taller_x_recurso_recurso FOREIGN KEY (id_recurso) REFERENCES recurso(id_recurso),
    CONSTRAINT fk_taller_x_recurso_taller FOREIGN KEY (id_taller) REFERENCES taller(id_taller),
    PRIMARY KEY (id_recurso, id_taller)
)
 
CREATE TABLE escuela_x_taller_x_docente (
    id_taller INT NOT NULL,
    id_escuela INT NOT NULL,
    id_docente INT NOT NULL,
    fecha DATE
 
    CONSTRAINT fk_escuela_x_taller_x_docente_taller FOREIGN KEY (id_taller) REFERENCES taller(id_taller),
    CONSTRAINT fk_escuela_x_taller_x_docente_escuela FOREIGN KEY (id_escuela) REFERENCES escuela(id_escuela),
    CONSTRAINT fk_escuela_x_taller_x_docente_docente FOREIGN KEY (id_docente) REFERENCES docente(id_docente),
    PRIMARY KEY (id_taller, id_escuela, id_docente, fecha)
)
