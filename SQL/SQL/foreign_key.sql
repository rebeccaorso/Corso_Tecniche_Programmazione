ALTER TABLE libro
add constraint fk_libro_editore
foreign key (editore_id) references editore(id)
on delete set null
on update cascade;

delete from editore
where id = 1;

select * from libro;

alter table libro drop foreign key fk_libro_editore;

insert into editore values(1,'mondadori','monda@gmail.com');
update libro set editore_id = 1 where editore_id is null;

select * from libro;

truncate editore;
truncate autore_libro;
truncate autore;
delete from autore;
delete from libro;
delete from editore;


show create table libro;

alter table libro auto_increment = 1;
alter table autore auto_increment = 1;
alter table editore auto_increment = 1;

select table_name, auto_increment
from information_schema.tables
where table_schema = 'catalogo';

select @@foreign_key_checks;

set foreign_key_checks = 0;

set foreign_key_checks = 1;



