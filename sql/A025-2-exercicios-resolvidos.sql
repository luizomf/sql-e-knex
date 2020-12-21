-- 1) Insira 5 usuários
insert into users (first_name, last_name, email, password_hash) values
('João', 'Miranda', 'email1@email.com', rand() * 100000),
('Maria', 'Figueiredo', 'email2@email.com', rand() * 100000);

-- 2) Insira 5 perfís para os usuários inseridos
insert into profiles (bio, description, user_id) values 
('Uma bio', 'Uma description', (select id from users where email = 'email1@email.com')),
('Uma bio', 'Uma description', (select id from users where email = 'email2@email.com'));

-- 3) Insira permissões (roles) para os usuários inseridos
insert ignore into users_roles (user_id, role_id) values 
(
	(select id from users where email = 'email1@email.com'),
	(select id from roles where name = 'PUT')
),
(
	(select id from users where email = 'email2@email.com'),
	(select id from roles where name = 'POST')
),
(
	(select id from users where email = 'email2@email.com'),
	(select id from roles where name = 'PUT')
);

-- 4) Selecione os últimos 5 usuários por ordem decrescente
select * from users order by id desc limit 5;

-- 5) Atualize o último usuário inserido
update users set first_name = concat(first_name, ' atualizado')
where id = 619;

-- 6) Remova uma permissão de algum usuário
delete from users_roles where 
user_id=(select id from users where email = 'email2@email.com') and
role_id=(select id from roles where name = 'POST');

-- 7) Remova um usuário que tem a permissão "PUT"
delete u from users as u
inner join users_roles ur on u.id = ur.user_id 
inner join roles r on ur.role_id = r.id
where r.name = 'PUT' and u.id = 619;

-- 8) Selecione usuários com perfís e permissões (obrigatório)
select u.id as uid, u.first_name, r.name, p.bio from users u
inner join profiles p on p.user_id = u.id
inner join users_roles ur on u.id = ur.user_id 
inner join roles r on ur.role_id = r.id
order by u.first_name asc;

-- 9) Selecione usuários com perfís e permissões (opcional)
select u.id as uid, u.first_name, r.name, p.bio from users u
left join profiles p on p.user_id = u.id
left join users_roles ur on u.id = ur.user_id 
left join roles r on ur.role_id = r.id
order by u.first_name asc;

-- 10) Selecione usuários com perfís e permissões ordenando por salário
select u.id as uid, u.first_name, u.salary , r.name, p.bio from users u
left join profiles p on p.user_id = u.id
left join users_roles ur on u.id = ur.user_id 
left join roles r on ur.role_id = r.id
order by u.salary DESC ;