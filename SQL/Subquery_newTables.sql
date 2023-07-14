create table if not exists amici(
id int auto_increment primary key,
nome varchar (30),
cognome varchar (50)
)
select nome, cognome from studenti;

-- stessi nomi presenti in due tabelle diverse
select nome, cognome from amici
where row(nome, cognome) = (select nome, cognome from studenti where id=4);

select nome, cognome from amici
where row(nome, cognome) = any (select nome, cognome from studenti where cognome='rossi');

select * from articolo;

update articolo set rimanenza = 100;

select descrizione, sum(quantita)
from ordine_dettaglio
join articolo
on articolo_id = articolo.id
group by articolo_id;

update articolo set rimanenza =
rimanenza - (select sum(quantita)
from ordine_dettaglio
where articolo.id = ordine_dettaglio.articolo_id
group by articolo_id);

update articolo set rimanenza = 100
where rimanenza is null;

-- if (test, 1,0)

update articolo set rimanenza = 
if(
(select sum(quantita) -- test
from ordine_dettaglio
where articolo.id = ordine_dettaglio.articolo_id
group by articolo_id) > 0,
rimanenza - (select sum(quantita) -- 1
from ordine_dettaglio
where articolo.id = ordine_dettaglio.articolo_id
group by articolo_id), 
100 -- 0
);

select * from cliente;

update cliente set credito = 0;

update cliente set credito = 
if(
(select sum(quantita*prezzo)
from ordine_dettaglio
join ordine
on ordine_id = ordine.id
and cliente_id = cliente.id
group by cliente_id) > 0,
credito = (select sum(quantita*prezzo)
from ordine_dettaglio
join ordine
on ordine_id = ordine.id
and cliente_id = cliente.id
group by cliente_id),
0);

select e.nome from editore e
where exists (
	select editore_id from libro where e.id = editore_id
);







