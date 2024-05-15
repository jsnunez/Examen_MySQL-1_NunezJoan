-- ·##################################
-- ############consultas 1###############
-- ###################################


use olimpicos;

-- 1. Consulta de Todos los Eventos en un Complejo Deportivo Específico.


select e.nombre
from evento_complejo_deportivo ecd inner join eventos e
on ecd.id_evento=e.id_evento
where id_evento_complejo_deportivo = (
select id_evento_complejo_deportivo  
from complejo_deportivo cd inner join evento_complejo_deportivo ecd
on cd.id_complejo_deportivo=ecd.id_complejo
where cd.nombre="Complejo Deportivo Bogota")

;


-- 2. Consulta de Comisarios Asignados a un Evento en Particular.

select c.nombre
from comisario c inner join evento_comisario ec
on c.id_comisario=ec.id_comisario
where ec.id_comisario = 
(select e.id_evento
from evento_comisario ec inner join eventos e
on ec.id_evento=e.id_evento
where e.nombre ="Torneo de Futbol");



-- 3. Consulta de Todos los Eventos en un Rango de Fechas.


select e.nombre,e.fecha
from eventos e
where e.fecha between "2023-05-11" and "2023-08-13";

-- 4. Consulta del Número Total de Comisarios Asignados a Eventos.

select count(e.nombre)
from evento_comisario ec inner join eventos e
on ec.id_evento=e.id_evento
where e.nombre="Torneo de Microfutbol";


-- 5. Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.

select cp.nombre ,ic.area_complejo
from complejo_polideportivo cp inner join info_complejo ic
on cp.id_complejo_polideportivo = ic.id_complejo
where ic.area_complejo>50;


-- 6. Consulta de Eventos con Número de Participantes Mayor que la Media.

select nombre
from eventos
where num_participantes > 51.3
 ;



-- 7. Consulta de Equipamiento Necesario para un Evento Específico.

select e.nombre_equipos
from equipamento e inner join evento_equipo eq
on e.id_equipamento =eq.id_equipamento
where eq.id_evento =(
select e.id_evento
from eventos e inner join evento_equipo eq
on e.id_evento =eq.id_evento
where e.nombre= "Torneo de Voleibol");
-- 8. Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico.


-- 9. Consulta de Complejos Polideportivos sin Eventos Celebrados.

select cp.nombre
from complejo_polideportivo cp left join evento_complejo_poli ecp
on cp.id_complejo_polideportivo =ecp.id_complejo
where ecp.id_complejo is null;

-- 10. Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.












-- ####################################
-- ########## joan sebastian #########
-- ########## nuñez serrano ##########
