
/*
1)
seleziona il titolo, le pagine, il prezzo e l'editore
il cui editore è 'bompiani' e ordinate per titolo
*/

select titolo, pagine, prezzo, nome from libro, editore
where editore.id = editore_id
and nome = 'bompiani'
order by titolo;

/*
2)
seleziona il titolo, le pagine, il prezzo e l'editore
il cui prezzo è inferiore di 10 euro e ordinate per prezzo
*/

select titolo, pagine, prezzo, nome from libro, editore
where prezzo < 10
and editore.id = editore_id
order by prezzo;

/*
3)
seleziona il titolo, le pagine, il prezzo e l'editore
il cui prezzo è inferiore di 10 euro e l'editore è 'mondadori' e ordinate per prezzo
*/
select titolo, pagine, prezzo, nome from libro, editore
where prezzo < 10
and editore.id = editore_id
and nome = 'mondadori'
order by prezzo;

/*
4)
seleziona il titolo, le pagine, il prezzo e l'editore
il cui titolo comincia per 'il' o 'la' e ordinate per prezzo
*/

select titolo, pagine, prezzo, nome from libro, editore
where editore.id = editore_id
and titolo regexp '^il|^la' 
order by prezzo;

/*
5)
seleziona il titolo, le pagine, il prezzo, il nome e il cognome dell'autore
la cui nazionalità è 'en' o 'it' e ordinate per nazionalita
*/

select titolo, pagine, prezzo, nome, cognome, nazionalita from libro, autore, autore_libro
where libro.id = libro_id
and autore.id = autore_id
and (nazionalita = 'en' OR nazionalita = 'it')
order by nazionalita;

/*
6)
seleziona il titolo, le pagine, il prezzo, il nome e il cognome dell'autore
il cui cognome comincia per 'c' e ordinate per nazionalita
*/
select titolo, pagine, prezzo, nome, cognome from libro, autore, autore_libro
where libro.id = libro_id
and autore.id = autore_id
and cognome  regexp '^c'
order by nazionalita;

/*
7)
seleziona il titolo, le pagine, il prezzo, l'editore e il cognome dell'autore
e ordinate per titolo
*/

select titolo, pagine, prezzo, editore.nome, cognome from libro, editore, autore, autore_libro
where editore.id = editore_id
and libro.id = libro_id
and autore.id = autore_id
order by titolo;

/*
8)
seleziona il titolo, le pagine, il prezzo, l'editore e il cognome dell'autore
il cui prezzo è maggiore di 10 euro
e ordinate per prezzo dal più caro al più economico
*/

select titolo, pagine, prezzo, editore.nome, cognome from libro, editore, autore, autore_libro
where editore.id = editore_id
and libro.id = libro_id
and autore.id = autore_id
and prezzo > 10
order by prezzo desc;

/*
9) selezionate solo i libri editi da mondadori (proiettate titolo e prezzo),
ordinateli per prezzo, dal più caro al più economico
*/

select titolo, prezzo from libro, editore
where editore.id = editore_id
and nome = 'mondadori'
order by prezzo desc;

/*
10)
Selezionare nome e cognome dell'autore, titolo, prezzo dei libri, scritti da autori di nazionalità inglese
e ordinateli per autore
*/

select nome, cognome, titolo, prezzo from libro, autore, autore_libro
where libro.id = libro_id
and autore.id = autore_id
and nazionalita = 'en'
order by nome;
