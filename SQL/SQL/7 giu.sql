
select * from catalogo.libro;
truncate studenti;
select * from studenti order by cognome;
select * from studenti order by cognome desc;

select * from studenti order by provincia desc;
select * from studenti order by cognome, nome;
select * from studenti order by data_nascita;

select * from studenti where genere = 'f' order by cognome;

select now();

select * from studenti ;
select * from studenti where data_nascita >= '1990-01-01' order by data_nascita;

select * from studenti where citta <> 'torino' order by citta;

select * from studenti where citta = 'torino' or genere = 'f' order by cognome;

SELECT * FROM studenti
WHERE cognome='verdi' OR cognome='rossi'
AND provincia='to' OR provincia='al';

SELECT * FROM studenti
WHERE (cognome='verdi' OR cognome='rossi')
AND (provincia='to' OR provincia='al'); -- questa e questa

SELECT * FROM studenti
WHERE provincia in('to','al','mi','no');
-- between, not between

select * from studenti
where data_nascita between '1990-01-01' and '1999-12-31'
order by data_nascita desc;

-- is null, is null

select cognome from studenti where cognome is null;

-- like, nor like

select * from studenti where cognome like 'v%'
order by cognome;

select * from studenti
where cognome like '%e'
order by cognome;

select * from studenti
where nome like 'mari_'
order by cognome;

select * from studenti 
where indirizzo like 'via%'
order by cognome;

select * from studenti
where nome = 'mario'
order by cognome;

select * from studenti;

SELECT * from studenti where nome like 'mar%';
SELECT * from studenti where nome regexp '^mar';
select * from studenti where nome regexp 'co$';
select * from studenti where nome regexp '^mar|ara|co$';
SELECT * from studenti where nome regexp '[mcp]a';
SELECT * from studenti where nome regexp '[a-h]o';

