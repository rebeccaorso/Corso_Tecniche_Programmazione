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