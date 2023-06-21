

alter table libro
add 
constraint fk_libro_editore
foreign key(editore_id) references editore(id)
on delete cascade
on update cascade;


alter table libro drop foreign key fk_libro_editore;
show create table libro;

select * from editore;
insert into libro(titolo, prezzo, editore_id)values('titolo',20.00,50);
delete from editore where id = 1;
select * from libro;

show create table libro;

alter table libro
add constraint fk_libro_editore
foreign key(editore_id) references editore(id)
on delete no action
on update no action;

alter table autore_libro
add constraint fk_al_libro
foreign key(libro_id) references libro(id)
on delete no action
on update cascade,
add constraint fk_al_autore
foreign key(autore_id) references autore(id)
on delete no action
on update cascade;

delete from autore_libro;
delete from libro;
delete from editore;
delete from autore;





