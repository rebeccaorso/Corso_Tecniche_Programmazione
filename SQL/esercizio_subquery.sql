SELECT * FROM shop.articolo;
select * from ordine_dettaglio;

select sum(prezzo*rimanenza) `valore magazzino`
from articolo;

select categoria, sum(prezzo*rimanenza) `valore magazzino`
from articolo
group by categoria;

select descrizione, sum(quantita) `quantità`
from ordine_dettaglio
join articolo
on articolo_id = articolo.id
group by articolo.id
order by `quantità` desc;

select categoria, sum(quantita) `quantità`
from ordine_dettaglio
join articolo
on articolo_id = articolo.id
group by categoria;

select sum(prezzo*quantita) `valore ordini`
from ordine_dettaglio;

select * from impiegato;

select stipendio 
from impiegato
where id = 6;

select cognome, nome, stipendio 
from impiegato
where stipendio > 1500.00;

select cognome, nome, stipendio 
from impiegato
where stipendio >(select stipendio 
from impiegato
where id = 6);

select max(prezzo) from libro;
select titolo from libro where prezzo = (select max(prezzo) from libro);

select titolo, prezzo
from libro
where prezzo > (select avg(prezzo) from libro)
order by prezzo;

select u.nome, avg(stipendio)`stipendio medio`
from impiegato i, ufficio u
where ufficio_id = u.id
group by i.ufficio_id
having `stipendio medio`>= all (select avg(stipendio) 
from impiegato 
group by ufficio_id); 

select cognome, nome
from impiegato
where ufficio_id = any
(select id from ufficio where regione = 'piemonte');

select cognome, i.nome
from impiegato i
join ufficio
on ufficio_id = ufficio.id
where regione = 'piemonte';


-- clienti che hanno fatto ordini
select nome, cognome, telefono, citta
from cliente
where id in (select cliente_id from ordine);

select distinct cognome, telefono, citta
from cliente
join ordine on ordine.cliente_id = cliente.id;

-- clienti che non hanno fatto ordini
select cognome, telefono, citta
from cliente
where id not in (select cliente_id from ordine);

select cognome, telefono, citta
from cliente
left join ordine on ordine.cliente_id = cliente.id
where cliente_id is null;

