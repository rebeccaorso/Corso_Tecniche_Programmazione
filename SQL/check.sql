show create table libro;

alter table libro
add constraint ck_prezzo
check (prezzo > 0),
add constraint ck_pagine
check (pagine > 0); 


desc libro;
show create table libro;

insert into libro(titolo, prezzo, pagine, editore_id)
values('test',0,10,1);

alter table libro drop check ck_prezzo;

