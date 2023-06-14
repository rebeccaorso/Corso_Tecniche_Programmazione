

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
