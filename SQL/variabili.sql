set @prezzoMedio = (select avg(prezzo) from libro);
select @prezzoMedio;

delimiter $$
 create function anni(p_data_nascita date) returns tinyint
	not deterministic
begin
	declare eta tinyint;
    set eta = timestampdiff(year, p_data_nascita, curdate());
    return (eta);
    end$$
    delimiter ;
    
select cognome, nome, anni(data_nascita) `Età`
FROM studenti
ORDER BY cognome;
 
 
 -- determinare stato gold del cliente con i crediti
 
 drop function clientLevel;
delimiter $$
create function clientLevel(p_credit_value smallint) returns varchar(8)
	deterministic
begin 
	declare  client_level varchar(8);
    CASE
		when p_credit_value >= 3000 then set client_level = 'Platinum';
		when p_credit_value < 3000 and p_credit_value >= 2000 then set client_level = 'Gold';
        when p_credit_value < 2000 and p_credit_value >= 1000 then set client_level = 'Silver';
        when p_credit_value < 1000 and p_credit_value >= 1 then set client_level = 'Basic';
        when p_credit_value = 0 then set client_level = 'None';
	end case;
    return (client_level);
end $$
delimiter ;

select cognome, clientLevel(credito) livello from cliente;

show function status where db= 'goal2023' or db= 'shop';

show function status where definer like 'app_%';

show create function clientLevel;

-- drop procedure if exists 
create procedure getAllStudents()
select cognome, nome, genere, indirizzo, citta, provincia, email, anni(data_nascita)
from studenti
order by cognome;

call getAllStudents();

drop procedure if exists getAllClients;
create procedure getAllClients()
select nome, 
cognome, 
indirizzo, 
citta, 
provincia, 
regione, 
email, 
credito, 
clientLevel(credito) livello
from cliente
order by cognome;

call getAllClients();

drop procedure getClientOrders;
#create procedure getClientOrders(IN p_id_cliente int)
#select c.nome, c.cognome, o.id, o.`data`
#from cliente c
#join ordine o
#on c.id = o.cliente_id and o.cliente_id = p_id_cliente;

call getClientOrders(5);

#ifnull(par1, par2)

create procedure getClientOrders(IN p_id_cliente int)
select c.nome, c.cognome, o.id, o.`data`
from cliente c
join ordine o
on c.id = o.cliente_id and o.cliente_id = ifnull(p_id_cliente, o.cliente_id);





        