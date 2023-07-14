CREATE TABLE IF NOT EXISTS impiegato (
id int auto_increment,
nome varchar(50),
cognome varchar(50),
ruolo varchar(50),
id_respo int,
stipendio decimal(6,2),
constraint fk_self_impiegato
FOREIGN KEY impiegato(id_respo) REFERENCES impiegato(id)
ON UPDATE CASCADE
ON DELETE NO ACTION,
PRIMARY KEY(id)
);

alter table impiegato drop foreign key fk_self_impiegato;

alter table impiegato
add constraint fk_self_impiegato
FOREIGN KEY impiegato(id_respo) REFERENCES impiegato(id)
ON UPDATE CASCADE
ON DELETE set null;

INSERT INTO `impiegato` VALUES (1,'Mario','Rossi','tecnico',10,2500.00),
(2,'Marco','Bianchi','amministrativo',7,1600.00),
(3,'Paolo','Verdi','amministrativo',7,1600.00),
(4,'Enrico','Marrone','venditore',8,1300.00),
(5,'Nicola','Testa','venditore',8,1300.00),
(6,'Franco','Barba','tecnico',1,1500.00),
(7,'Elena','Totti','amministrativo',10,2600.00),
(8,'Paola','Capra','venditore',10,2300.00),
(9,'Mauro','Barba','venditore',8,1300.00),
(10,'Oscar','Vecchio','tecnico',NULL,3000.00);

set foreign_key_checks = 1;

select * from impiegato;

delete from impiegato  where id = 10;

show create table impiegato;
