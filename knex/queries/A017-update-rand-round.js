/*
-- Configura um salário aleatório para users
update users set salary = round(rand() * 10000, 2);

select salary from users where 
salary BETWEEN 1000 and 1500
order by salary asc;
*/
const knex = require('../../knex/config/database');
const update = knex('users').update({
  salary: knex.raw('round(rand() * ??, ??)', [10000, 2])
});
console.log(update.toString());

update.then((data) => {
  console.log(data);
}).catch((e) => {
  console.log(e.message);
}).finally(() => {
  knex.destroy();
});