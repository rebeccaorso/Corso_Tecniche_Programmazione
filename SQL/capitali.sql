-- creare 3 tabelle: europa, america, africa
-- stato e capitale
-- inserite almeno 3 record per ogni tabella

CREATE TABLE IF NOT EXISTS europa (
id int auto_increment,
stato varchar(50),
capitale varchar(50),
PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS america (
id int auto_increment,
stato varchar(50),
capitale varchar(50),
PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS africa (
id int auto_increment,
stato varchar(50),
capitale varchar(50),
PRIMARY KEY(id)
);

insert into `europa` values (1,"Italia", "Roma"),
(2,"Francia", "Parigi"),
(3,"Spagna", "Madrid");

insert into `america` values (1,"Canada", "Ottawa"),
(2,"USA", "Washington"),
(3,"Brasile", "Brasilia");

insert into `africa` values (1,"Egitto", "Il Cairo"),
(2,"Algeria", "Algeri"),
(3,"Marocco", "Casablanca");

select * from europa;
select * from africa;
select * from america;

UPDATE africa
SET capitale = "Rabat"
WHERE id =3;

select stato, capitale from europa
union all
select stato, capitale from africa
union all
select stato, capitale from america;



