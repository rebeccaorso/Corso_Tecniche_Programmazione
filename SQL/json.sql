select avg(prezzo) media
from libro;

select count(*) from studenti;

select count(*) ragazze from studenti where genere = "f";

select max(prezzo), min(prezzo)
from libro;

select sum(prezzo)
from libro;

select round(avg(prezzo)) media -- intero, arrotondamento matematico
from libro;

select round(avg(prezzo),2) media -- numeri dopo la virgola
from libro;

select floor(avg(prezzo)), ceiling(avg(prezzo))  -- intero basso e intero alto
from libro;

select * from studenti;
insert into studenti(email) values("test@gmail.it");

select last_insert_id();

update studenti 
set email = replace(email,"gmail.com", "gmail.it");

update studenti 
set email = replace(email,"gmail.it", "gmail.com");

select now();
SELECT CURTIME();
select curdate();

select cognome, data_nascita, year(data_nascita)
from studenti;

select cognome, data_nascita, day(data_nascita)
from studenti;

select cognome, data_nascita, dayname(data_nascita)
from studenti;

select cognome, data_nascita, monthname(data_nascita)
from studenti;

select @@lc_time_names;
set lc_time_names = 'it_IT';

select dayofweek(curdate())-1; -- perche iniziano la settimana la domenica

show create table studenti;

select date_format(data_nascita, '%d-%m-%Y')
from studenti;

select cognome, date_format(data_nascita, '%d-%m-%Y')
from studenti;

select cognome, date_format(data_nascita, '%d-%M-%Y')
from studenti;

insert into studenti(cognome, email, data_nascita)
value('allegri', 'allegri@gmail.com', str_to_date('05,10,1969','%d,%m,%Y'));
select * from studenti;

select str_to_date(concat_ws(',','05','10','1969'),'%d,%m,%Y');

select datediff('2023-06-30','2023-07-15');

select 
	cognome, 
	data_nascita, 
    timestampdiff(year, data_nascita, curdate()) `età`
from studenti
order by `età`;

-- JSON

create table if not exists articolo(
id int auto_increment primary key,
descrizione varchar(50),
specifiche json
);

INSERT INTO articolo(descrizione, specifiche)
VALUES(
'TV SAMSUNG 32" SMART TV',
'{
"marca": "SAMSUNG",
"pesoKg": 5.5,
"schermo": "LCD",
"pollici": 32,
"uscite": ["HDMI", "USB"]
}'
);

select * from articolo;

INSERT INTO articolo(descrizione,specifiche)
VALUES(
'TV SONY 32" SMART TV',
JSON_OBJECT(
"marca","SONY",
"pesoKg",6.5,
"schermo","LED",
"pollici", 32,
"uscite","HDMI"
)
);

INSERT INTO articolo(descrizione,specifiche)
VALUES(
'TV PHILIPS 55" SMART TV',
JSON_OBJECT(
"marca","PHILIPS",
"pesoKg","9.5",
"schermo","LED",
"pollici",55,
"uscite", JSON_ARRAY('HDMI','RCA', 'USB', 'COAXIAL','SCART')
)
);

select json_extract(specifiche,'$.uscite')
from articolo;

select specifiche -> "$.uscite" from articolo;

select json_extract(specifiche,'$.uscite[0]')
from articolo;

select json_extract("[10,20,[30,40]]", "$[1]");
select json_extract("[10,20,[30,40]]", "$[0]","[1]");
select json_extract("[10,20,[30,40]]", "$[2][0]");


UPDATE articolo
SET specifiche =
JSON_SET(specifiche,
'$.marca','LG',
'$.uscite',JSON_ARRAY('HDMI','SCART','S/PDIF'),'
 $.ingressi',JSON_ARRAY('ETHERNET','USB'))
 WHERE id = 1;
 
 select * from articolo;
 
UPDATE articolo
SET specifiche = JSON_INSERT(specifiche,'$.uscite[2]','RGB')
WHERE id = 1; -- non produce risultato perché la posizione nell'array è occupata

UPDATE articolo
SET specifiche = JSON_INSERT(specifiche,'$.uscite[3]','RGB')
WHERE id = 1;

UPDATE articolo
SET specifiche = JSON_REPLACE(specifiche,'$.marca','SONY')
WHERE id = 1;

UPDATE articolo
SET specifiche = JSON_REPLACE(specifiche,'$.marca','SHARP','$.misure','PLASMA')
WHERE id = 1;

UPDATE articolo
SET specifiche = JSON_REPLACE(specifiche,'$.uscite[1]','HDMI2')
WHERE id = 1;

UPDATE articolo
SET specifiche = JSON_REMOVE(specifiche,'$.profondita')
WHERE id = 1;

UPDATE articolo
SET specifiche = JSON_REMOVE(specifiche,'$.uscite[1]')
WHERE id = 1;

SELECT cognome,
IF( provincia = 'to', 'sede','fuori sede' ) sede
FROM studenti
ORDER BY sede DESC, cognome;

SELECT
provincia,
CASE provincia
WHEN 'to' THEN 'Torino'
WHEN 'at' THEN 'Asti'
WHEN 'no' THEN 'Novara'
WHEN 'al' THEN 'Alessandria'
WHEN 'cn' THEN 'Cuneo'
ELSE 'Vercelli' END 'Provincia completa'
FROM studenti;