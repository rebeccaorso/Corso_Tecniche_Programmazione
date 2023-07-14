create table if not exists aule(
id int auto_increment primary key,
nome char(2),
piano varchar(20),
capienza tinyint unsigned default 30
);

insert into aule(nome, piano)
values('1a', '1° piano'), 
('2a', '2° piano'), 
('3a', 'seminterrato'),
('4a', '1° piano'),
('5a', 'seminterrato');

create table if not exists alunni (
id int auto_increment primary key,
nome varchar (30),
cognome varchar (40),
genere enum('m','f'),
data_nascita date,
aula_id int
)

select nome, cognome, genere, data_nascita
from goal2023.studenti;

update alunni
set aula_id =1
where id <=5;

update alunni
set aula_id =2
where id >5 and id <=10;

update alunni
set aula_id =3
where id >10 and id <=15;









