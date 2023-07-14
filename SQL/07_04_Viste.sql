select * from studenti;

-- vista

create or replace view studenti_info as
select cognome, nome, email
from studenti;

show tables;

select * from studenti_info
where cognome like 'v%';

-- vista complessa
create or replace view libro_tot as
select titolo, pagine, prezzo, e.nome editore, a.nome, a.cognome, nazionalita
from libro l
join autore_libro al
on l.id= al.libro_id
join autore a
on a.id = al.autore_id
join editore e 
on e.id =l.editore_id
order by titolo;

select * from libro_tot;

select * from libro_tot
where editore = "mondadori";

select * from libro_tot
where editore = "mondadori" and prezzo > 15.00;

SELECT table_name, table_type
FROM information_schema.tables
WHERE table_schema = 'catalogo'
ORDER BY table_name;

create or replace view studenti_to as
select *
from studenti
where provincia = "to"
order by cognome
with check option; -- filtro, non posso modificare provincia

update studenti_to
set provincia = "cn"
where id = 51;

select * from studenti_to;

select regione, count(*) quanti
from studenti
group by regione;

-- conta stu divisi per genere della prov di bergamo
select genere, count(*) quanti
from studenti  
where provincia = "bg"
group by genere;

-- contiamo alunni assegnati alle diverse aule
select a.nome, count(*)
from aule a
join alunni al
on a.aula_id = al.aula_id
group by a.nome;

-- conta gli autori divisi per nazionalita maggiori di 1

select nazionalita, count(*) quanti
from autore 
group by nazionalita
having quanti >1 
order by nazionalita;

-- contate i libri per editore e calcolare il valore dei livìbri
select 
	e.nome editore, 
    count(*) quanti,
	sum(prezzo) valore
from editore e
join libro l
on e.id = l.editore_id
group by editore_id;



