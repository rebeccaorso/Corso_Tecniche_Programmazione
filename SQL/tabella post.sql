create table if not exists post (
id int auto_increment primary key,
titolo varchar(255) not null,
testo text not null,
data_pubblicazione datetime default null
);

create fulltext index k_titolo_testo on post(titolo,testo);

select * from post where match(titolo, testo) against('react redux');

select *, match(titolo, testo) against('react redux') 
from post 
where match(titolo, testo) against('react redux');

SELECT *, MATCH(titolo, testo) AGAINST('"gestione dello stato è un
problema"') peso
FROM post
WHERE MATCH(titolo, testo) AGAINST('"gestione dello stato è un problema”');

SELECT *, MATCH(titolo, testo) AGAINST('react -redux +stato' IN BOOLEAN MODE)peso
FROM post
WHERE MATCH(titolo, testo) AGAINST('react -redux +stato' IN BOOLEAN MODE);

