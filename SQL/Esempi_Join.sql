-- unione di tutto
select alunni.nome, cognome, aule.nome
from aule
join alunni
on aule.id = aula_id;


-- aula con alunni e aule senza alunni
select alunni.nome, cognome, aule.nome
from aule
left join alunni
on aule.id = aula_id;

-- alunni con aula e senza aula
select alunni.nome, cognome, aule.nome
from aule
right join alunni
on aule.id = aula_id;

-- solo aule senza alunni
select  aule.nome
from aule
left join alunni
on aule.id = aula_id
where aula_id is null;

-- solo alunni esclusi
select alunni.nome, cognome, aule.nome
from aule
right join alunni
on aule.id = aula_id
where aule.id is null;

alter table aule rename column id to aula_id;

select cognome, alunni.nome, aule.nome
from alunni
join aule
using(aula_id);
