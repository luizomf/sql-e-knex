/*
-- Apaga registros com joins
select u.first_name, p.bio from users u
left join profiles as p
on p.user_id = u.id
where u.first_name = 'Katelyn';

delete p, u from users u
left join profiles as p
on p.user_id = u.id
where u.first_name = 'Katelyn';
*/
const knex = require('../../knex/config/database');
const deleteSql = knex.raw(`
  delete p, u from users u
  inner join profiles as p
  on p.user_id = u.id
  where u.first_name = ? and p.bio like ?;
`, ['Katelyn', '%Katelyn%']);

console.log(deleteSql.toString());

deleteSql.then((data) => {
  console.log(data);
}).catch((e) => {
  console.log(e.message);
}).finally(() => {
  knex.destroy();
});