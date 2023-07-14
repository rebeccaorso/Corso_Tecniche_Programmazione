-- Creare una vista che mostri il cognome, il nome, l'email e l'età degli studenti
-- che hanno meno di 31 anni
-- chiamate la vista "studenti_giovani"
-- le intestazioni delle colonne risultanti della vista dovranno essere:
-- cognome | nome | email | età

create or replace view studenti_giovani as
select 
	cognome `cognome`, 
	nome `nome`, 
	email `email`, 
	TIMESTAMPDIFF(YEAR, data_nascita, CURDATE()) AS `eta`
from studenti
having eta < 31;

-- Creare una vista che mostri solo gli editori per i quali non esistono libri a catalogo
-- chiamate la vista "editori_nolibri"
-- l'intestazione della colonna risultante della vista sarà:
-- Editore

create or replace view editori_nolibri as
select 
	nome editore
from editore
left join libro
on editore.id = editore_id
where editore_id is null
group by editore;

-- Creare una vista che mostri quanti libri ci sono a catalogo per ogni editore
-- la vista deve riportare i record ordinati per quantità in ordine discendente
-- chiamate la vista "editori_quanti_libri"
-- le intestazioni delle colonne risultanti della vista dovranno essere:
-- Editore | Quantità
create or replace view editori_quanti_libri as
select 
	nome editore, 
    count(*) quantita
from editore 
join libro 
on editore.id = editore_id
group by editore_id
order by quantita;
