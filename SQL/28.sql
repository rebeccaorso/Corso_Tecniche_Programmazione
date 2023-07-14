-- self join
select i.cognome, i.nome, r.cognome Responsabiòe
from impiegato i
join impiegato r
on r.id = i.id_respo;



