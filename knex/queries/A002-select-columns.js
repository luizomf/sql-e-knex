/*
select 
u.email uemail, u.id uid, u.first_name ufirst_name
from users as u;
*/
const knex = require('../../knex/config/database');

const select = knex('users as u')
  .select('u.email as uemail', 'u.id as uid');

console.log(select.toString());

select.then(data => {
  for (const user of data) {
    console.log(user);
  }
}).catch(e => {
  console.log('ERRO:', e.message);
}).finally(() => {
  knex.destroy();
});
