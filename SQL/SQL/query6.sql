-- come cancellare
delete from studenti_03; -- cancella tutti i records non la tabella
select * from studenti_03;

select * from studenti_2;

delete from studenti_2
where id = 9;

delete from studenti_2
where genere = 'm';

delete from studenti_2;
insert into studenti_2 (cognome, email)
values ('bianchi', 'bb@gmail.com');

truncate studenti_2;