select * from studenti_info;

show create table studenti_info;
CREATE ALGORITHM=UNDEFINED DEFINER=`app_goal`@`localhost` SQL SECURITY DEFINER VIEW `studenti_info` AS select `studenti`.`cognome` AS `cognome`,`studenti`.`nome` AS `nome`,`studenti`.`email` AS `email` from `studenti`;

-- student_info equivale a questa query
select * from (
select `studenti`.`cognome` 
AS `cognome`,`studenti`.`nome` 
AS `nome`,`studenti`.`email` AS `email` 
from `studenti`
) as tbl;


select sum(quantita) `quantità`
from ordine_dettaglio
group by ordine_id;

select max(quantità), min(quantità), floor(avg(quantità))
from (select sum(quantita) `quantità`
from ordine_dettaglio
group by ordine_id) as tbl;

