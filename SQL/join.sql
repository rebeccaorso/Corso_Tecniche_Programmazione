select titolo, nome 
from libro
inner join editore
on editore.id = editore_id;

select titolo, nome 
from editore
left join libro
on editore.id = editore_id;


-- estraggo solo i valori esclusi dall'unione (editore senza libri a catalogo)
select titolo, nome 
from libro
right join editore
on editore.id = editore_id
where editore_id is null;

-- unisco entrambe le tabelle
select titolo, nome 
from libro
left join editore
on editore.id = editore_id

union

select titolo, nome 
from libro
right join editore
on editore.id = editore_id;

-- vedo solo i risultati esclusi dall'unione

select titolo, nome 
from libro
left join editore
on editore.id = editore_id
where editore.id is null

union

select titolo, nome 
from libro
right join editore
on editore.id = editore_id
where editore_id is null;