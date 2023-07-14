select  cognome, data_nascita, "X" Generazione
from studenti
where data_nascita < '1980-01-01'

union all

select  cognome, data_nascita, "Millenials" Generazione
from studenti
where data_nascita between '1980-01-01' and '1994-12-31'

union all

select  cognome, data_nascita, "Z" Generazione
from studenti
where data_nascita >= '1995-01-01';

