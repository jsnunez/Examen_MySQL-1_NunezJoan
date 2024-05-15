-- ·##################################
-- ############examen 1###############
-- ###################################

-- crear base de datos

-- create database olimpicos;

-- usar base de datos olimpicos

use olimpicos;

create table jefes (
  id_jefe INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  titulo VARCHAR(100) NOT NULL,
  primary key (id_jefe)
  );
  
  create table comisario (
  id_comisario INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  tipo ENUM('juez', 'observador') not null,
  primary key (id_comisario)
  );
  
    create table deportes (
  id_deporte INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  num_jugadores int NOT NULL,
  primary key (id_deporte)
  );
    create table info_complejo (
  id_complejo INT NOT NULL,
  locacion VARCHAR(100) NOT NULL,
  area_complejo float NOT NULL,
  id_jefe int not null,
  primary key (id_complejo),
  FOREIGN KEY (id_jefe) REFERENCES jefes (id_jefe)
  );
  
   
  
      create table equipamento (
  id_equipamento INT NOT NULL,
  nombre_equipos VARCHAR(100) NOT NULL,
  stock int NOT NULL,
  primary key (id_equipamento)
  );
  
  create table complejo_deportivo (
  id_complejo_deportivo INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  id_deporte INT NOT NULL,
  id_info_complejo INT NOT NULL,
  primary key (id_complejo_deportivo),  
  FOREIGN KEY (id_deporte) REFERENCES deportes (id_deporte),
  FOREIGN KEY (id_info_complejo) REFERENCES info_complejo (id_complejo)
  );
  
    create table complejo_polideportivo (
  id_complejo_polideportivo INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  id_deporte INT NOT NULL,
  id_info_complejo INT NOT NULL,
  primary key (id_complejo_polideportivo),  
  FOREIGN KEY (id_deporte) REFERENCES deportes (id_deporte),
  FOREIGN KEY (id_info_complejo) REFERENCES info_complejo (id_complejo)
  );
  
        create table eventos (
  id_evento INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  fecha datetime not null,
  duracion time NOT NULL,
  num_participantes int not null,
  primary key (id_evento)
  );
  
        create table evento_complejo_deportivo (
  id_evento_complejo_deportivo INT NOT NULL,
	id_evento int not null,
	id_complejo int not null,
  primary key (id_evento_complejo_deportivo),
  FOREIGN KEY (id_evento) REFERENCES eventos (id_evento),  
  FOREIGN KEY (id_complejo) REFERENCES complejo_deportivo (id_complejo_deportivo)
  );
  
          create table evento_complejo_poli(
  id_evento_complejo_deportivo INT NOT NULL,
	id_evento int not null,
	id_complejo int not null,
  primary key (id_evento_complejo_deportivo),
  FOREIGN KEY (id_evento) REFERENCES eventos (id_evento),  
  FOREIGN KEY (id_complejo) REFERENCES complejo_polideportivo (id_complejo_polideportivo)
  );
  
          create table evento_comisario(
  id_evento_comisario INT NOT NULL,
	id_evento int not null,
	id_comisario int not null,
  primary key (id_evento_comisario),
  FOREIGN KEY (id_evento) REFERENCES eventos (id_evento),  
  FOREIGN KEY (id_comisario) REFERENCES comisario (id_comisario)
  );
            create table evento_equipo(
  id_evento_equipo INT NOT NULL,
	id_evento int not null,
	id_equipamento int not null,
  primary key (id_evento_equipo),
  FOREIGN KEY (id_evento) REFERENCES eventos (id_evento),  
  FOREIGN KEY (id_equipamento) REFERENCES equipamento (id_equipamento)
  );

  
  
  
  
    create table sede_complejo (
  id_sede INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  id_complejo int NOT NULL,
  presupuesto float not null,
  primary key (id_sede),
  FOREIGN KEY (id_complejo) REFERENCES complejo_deportivo (id_complejo_deportivo)
  
  );
 create table sede_complejo_poli (
  id_sede INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  id_complejo int NOT NULL,
  presupuesto float not null,
  primary key (id_sede),
  FOREIGN KEY (id_complejo) REFERENCES complejo_polideportivo (id_complejo_polideportivo)
  
  );

  
  





-- ####################################
-- ########## joan sebastian #########
-- ########## nuñez serrano ##########