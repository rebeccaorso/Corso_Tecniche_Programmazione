-- [5,11,15,21,33,38,42,49,60]
-- 49

-- indice

select * from studenti where provincia = "to";

explain select * from studenti where provincia = "to";
create index k_provincia on studenti(provincia);

desc studenti;

show index from cliente;

select * from cliente where provincia = "to";

explain select * from cliente where provincia = "to";
create index k_provincia on cliente(provincia);

explain select * from cliente 
where provincia = "to" 
and credito > 100;

create index k_provincia_credito on cliente(provincia,credito);
create index k_credito_provincia on cliente(credito, provincia);

drop index k_provincia_credito on cliente;

