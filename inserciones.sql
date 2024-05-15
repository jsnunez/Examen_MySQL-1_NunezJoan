INSERT INTO deportes VALUES
(1,'Natacion', 5),
(2,'Futbol', 25),
(3,'Microfutbol', 20),
(4,'Voleibol', 16),
(5,'Tennis', 2),
(6,'Patinaje', 5),
(7,'ping pong', 25),
(8,'running', 20),
(9,'basketball', 16),
(10,'hockey', 12);


INSERT INTO jefes VALUES
(1,'Jose Hernandez','jh@gmail.com','Especialista en Natacion'),
(2,'Camila Perez','cp@gmail.com','Especialista en Voleibol'),
(3,'Ana Rojas','ar@gmail.com','Especialista en Futbool'),
(4,'Carlos Duarte','cd@gmail.com','Especialista en Tennis'),
(5,'Horacio Hernandez','hh@gmail.com','Especialista en Tennis'),
(6,'camilo Hernandez','ch@gmail.com','Especialista en patinaje'),
(7,'Ana Perez','ap@gmail.com','Especialista en running'),
(8,'patricia Rojas','Pr@gmail.com','Especialista en hockey'),
(9,'marcos Duarte','md@gmail.com','Especialista en basketball'),
(10,'Horacio gomez','hg@gmail.com','Especialista en ping pong')
;



INSERT INTO equipamento VALUES
(1, 'Arcos',5),
(2, 'Pértigas',15),
(3, 'Barras Paralelas',10),
(4, 'Flotadores',35),
(5, 'Raquetas',5),
(6, 'Balones',17),
(7, 'patines',10),
(8, 'tenis',15),
(9, 'cascos',12),
(10, 'biciletas',15),
(11, 'protecciones',15)
;


INSERT INTO comisario VALUES
(1, 'Diego Rojas','dr@hotmail.com','555-555-12345','juez'),
(2, 'Dracula Rosas','drR@hotmail.com','555-555-67895','juez'),
(3, 'Tomas suarez','ts@hotmail.com','555-555-35485','juez'),
(4, 'Lorena Martinez','lm@hotmail.com','444-555-12345','observador'),
(5, 'Rosa Martinez','Rm@hotmail.com','444-457-12345','observador'),
(6, 'Laura Bermudez','lBer@hotmail.com','444-856-12345','observador'),
(7, 'camila Rojas','cr@hotmail.com','555-415-12345','observador'),
(8, 'diego Rosas','drR@hotmail.com','555-555-67895','juez'),
(9, 'Tomas diaz','td@hotmail.com','555-555-45641','juez'),
(10, 'Tomas padilla','tp@hotmail.com','444-555-12345','observador'),
(11, 'carla Martinez','cm@hotmail.com','785-457-12345','juez');


INSERT INTO info_complejo VALUES
(1, 'Bucaramanga', 5, 2),
(2, 'Giron', 14.2, 1),
(3, 'Floridablanca', 54, 5),
(4, 'Zapatoca', 65, 3),
(5, 'Lebrija', 48, 4),
(6, 'Sangil', 5, 2),
(7, 'Socorro', 14.2, 1),
(8, 'Soacha', 54, 5),
(9, 'Bogota', 65, 3),
(10, 'Chia', 48, 4);


INSERT INTO complejo_polideportivo VALUES
(1,'Complejo Deportivo Bucaramanga', 4,2),
(2,'Complejo Deportivo Sangil',2,6),
(3,'Complejo Deportivo Soacha', 4,8),
(4,'Complejo Deportivo Bucaramanga', 5,2),
(5,'Complejo Deportivo Sangil',3,6),
(6,'Complejo Deportivo Soacha', 1,8),
(7,'Complejo Deportivo Bogota',2,9),
(8,'Complejo Deportivo Bogota',8,9),
(9,'Complejo Deportivo lebrija', 5,5),
(10,'Complejo Deportivo chia', 1,10),
(11,'Complejo Deportivo zapatoca',5,4),
(12,'Complejo Deportivo socorro', 5,7);


INSERT INTO complejo_deportivo VALUES
(1,'Complejo Deportivo Giron', 1,2),
(2,'Complejo Deportivo Floridablanca',3,3),
(3,'Complejo Deportivo Zapatoca', 2,4),
(4,'Complejo Deportivo Bucaramanga', 3,2),
(5,'Complejo Deportivo Sangil',1,6),
(6,'Complejo Deportivo Soacha', 8,8),
(7,'Complejo Deportivo Bogota',7,9),
(8,'Complejo Deportivo Soacha', 1,8),
(9,'Complejo Deportivo Bucaramanga', 8,2),
(10,'Complejo Deportivo Soacha', 7,8),
(11,'Complejo Deportivo Bucaramanga', 9,2);

INSERT INTO eventos VALUES
(1, 'Torneo de Tennis','2023-05-12 10:00:00', '01:30:00', 25),
(2, 'Torneo de Microfutbol','2023-11-20 10:00:00', '03:15:00', 75),
(3, 'Torneo de Voleibol','2023-06-02 09:00:00', '05:30:00', 25),
(4, 'Torneo de Natacion','2023-12-12 16:00:00', '02:45:00', 5),
(5, 'Torneo de Futbol','2024-01-04 10:00:00', '01:45:00', 85),
(6, 'Torneo de Futbol ninos','2024-01-04 14:00:00', '01:45:00', 85),
(7, 'Torneo de ping pong','2023-12-20 10:00:00', '03:15:00', 55),
(8, 'Torneo de running','2023-08-02 09:00:00', '05:30:00', 15),
(9, 'Torneo de Natacion','2024-01-12 16:00:00', '02:45:00', 55),
(10, 'Torneo de basketball','2024-01-04 10:00:00', '01:45:00', 85),
(11, 'Torneo de patinaje','2024-01-10 8:00:00', '01:45:00', 55);

INSERT INTO evento_complejo_poli VALUES
(1,1,4),
(2,3,3),
(3,4,7),
(4,1,8),
(5,1,4),
(6,3,3),
(7,4,7),
(8,1,8),
(9,3,3),
(10,4,7)

;


INSERT INTO evento_complejo_deportivo VALUES
(1,2,1),
(2,2,2),
(4,5,3),
(5,2,3),
(6,6,3),
(7,1,4),
(8,3,3),
(9,4,7),
(10,1,8);

INSERT INTO evento_comisario VALUES
(1,1,1),
(2,3,5),
(3,4,3),
(4,5,4),
(5,6,5),
(6,2,7),
(7,2,1),
(8,4,7),
(9,7,2),
(10,9,1);


INSERT INTO evento_equipo VALUES
(1,3,6),
(2,1,5),
(3,4,4);

INSERT INTO sede_complejo VALUES
(1,'sede1',1,12.300),
(2,'sede2',5,150000.03),
(3,'sede3',4,34561.215);

INSERT INTO sede_complejo_poli VALUES
(1,'sede4',1,12.300),
(2,'sede5',5,18000.03),
(3,'sede6',4,5641.215);