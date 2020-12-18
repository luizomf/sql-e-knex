-- Update - Atualiza registros
update users set 
first_name = 'Luiz',
last_name = 'Miranda'
where id between 119 and 121;

select * from users where id between 119 and 121;