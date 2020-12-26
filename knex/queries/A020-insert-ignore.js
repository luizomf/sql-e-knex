/*
-- Ignora erros
insert ignore into users_roles (user_id, role_id)
select 
id, 
(select id from roles order by rand() limit 1) as qualquer 
from users order by rand() limit 5;
*/
const knex = require('../../knex/config/database');
const insert = knex(
    knex.raw('users_roles (user_id, role_id)')
  )
  .insert(qb => {
    qb.select('id').from('users').select(qb => {
      qb.select('id').from('roles').orderByRaw('rand()').limit(1).as('qualquer');
    });
  });

const insertIgnore = knex.raw(
  insert.toString().replace('insert', 'insert ignore')
);
console.log(insertIgnore.toString());

insertIgnore.then((data) => {
  console.log(data);
}).catch((e) => {
  console.log(e.message);
}).finally(() => {
  knex.destroy();
});