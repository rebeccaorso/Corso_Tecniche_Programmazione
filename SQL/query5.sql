-- duplicare tabelle

create table studenti_2 like studenti;
select * from studenti_2;
insert into studenti_2 select * from studenti; -- copia esatta che mantiene anche gli indici
select * from studenti_2;
desc studenti;
desc studenti_2;

create table studenti_3 as select * from studenti; -- backup senza primary key
