select * from migrations;
select * from users;
select * from tags;
select * from compliments;

select uu.name 'de', u.name 'para' , t.name 'tag', c.message 'elogio' 
from compliments c
inner join users u on (u.id = c.user_receiver)
inner join users uu on (uu.id = c.user_sender)
inner join tags t on (t.id = c.tag_id);

