-- Ignora erros
insert ignore into users_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users order by rand() limit 5;





