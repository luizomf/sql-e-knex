/*
-- Group by - Agrupa valores
SELECT first_name, COUNT(id) as total FROM users
GROUP BY first_name
ORDER BY total DESC;

select u.first_name, COUNT(u.id) as total from users u
left join profiles as p
on p.user_id = u.id
WHERE u.id IN (617, 539, 537, 611)
GROUP BY first_name
ORDER BY total DESC
LIMIT 5;
*/
const knex = require('../../knex/config/database');
const select = knex('users as u')
  .select('u.first_name')
  .leftJoin('profiles as p', 'u.id', 'p.user_id')
  .count('u.id as total')
  .whereIn('u.id', [69, 112, 10, 11])
  .groupBy('first_name')
  .orderBy('total', 'desc');

console.log(select.toString());

select.then((data) => {
  console.log(data);
}).catch((e) => {
  console.log(e.message);
}).finally(() => {
  knex.destroy();
});