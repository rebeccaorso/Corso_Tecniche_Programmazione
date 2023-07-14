-- query memorizzate

select distinct cognome 
from studenti
order by cognome;

select cognome
from studenti
where cognome like 'v%'
group by cognome
order by cognome;

select genere, count(genere)
from studenti
where genere = 'm';

select genere, count(genere)
from studenti
where genere = 'f';

select genere, count(*)
from studenti
group by genere;

select genere, count(genere)
from studenti
group by genere;

select count(*) from libro;

select e.nome, count(*) quanti
from libro l
join editore e
on l.editore_id = e.id
group by e.nome
order by quanti;

select genere, 
avg(timestampdiff(year, data_nascita, curdate()))
from studenti
group by genere;

select genere, 
floor(avg(timestampdiff(year, data_nascita, curdate())))
from studenti
group by genere;

select e.nome, sum(prezzo) valore
from libro l
join editore e
on e.id=l.editore_id
group by e.nome
order by valore;

select * from libro;

select 
	e.nome editore,
	count(*) quanti,
    sum(prezzo) valore,
    min(prezzo) economico,
    max(prezzo) `più caro`
from libro l
join editore e
on e.id=l.editore_id
group by editore_id
order by editore;

select 
	e.nome editore,
	count(*) quanti,
    sum(prezzo) valore,
    min(prezzo) economico,
    max(prezzo) `più caro`
from libro l
join editore e
on e.id=l.editore_id
group by editore_id
having quanti >1
order by editore;

select
	provincia, 
    genere, 
    count(*) quanti
from studenti
group by provincia, genere
order by provincia;

select
	provincia, 
    genere, 
    count(*) quanti
from studenti
where genere is not null
group by provincia, genere
order by provincia;

select * from studenti
order by id
limit 10;

select * from studenti
order by id
limit 11, 10;

select
	provincia, 
    genere, 
    count(*) quanti
from studenti
where genere is not null
group by provincia, genere 
with rollup
order by provincia;
