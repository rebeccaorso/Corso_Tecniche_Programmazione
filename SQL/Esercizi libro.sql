select * from libro;

select titolo, prezzo, nome 
from libro, editore
where editore_id = editore.id
and nome = 'mondadori'
and prezzo > 20.00;

select nome, cognome, titolo 
from autore, libro, autore_libro
where libro.id = autore_id
and autore.id = autore_id;

select nome, cognome, titolo
from autore, libro, autore_libro
where libro.id = autore_id
and autore.id = autore_id
and nazionalita = 'it';

select titolo, prezzo, pagine, nome as `Editore` -- alias di colonna
from libro, editore
where editore.id = libro.editore_id;

-- posso cambiare anche nome alle tabelle

select 
	 l.titolo,
	 l.prezzo,
	 e.nome,
	 a.nome,
	 a.cognome,
	 a.nazionalita
from libro l, editore e, autore a, autore_libro al
where l.editore_id = e.id
and l.id = al.libro_id
and a.id = al.autore_id;




