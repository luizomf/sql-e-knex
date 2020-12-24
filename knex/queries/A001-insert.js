/*
insert into users 
(first_name, last_name, email, password_hash) values
("Helena", "A.", "1@email.com", "3_hash"),
("Joana", "B.", "2@email.com", "4_hash"),
("Rosana", "C.", "3@email.com", "5_hash");
*/
const knex = require('../../knex/config/database');

const data = [
  {
    first_name: 'Joana',
    last_name: 'B.',
    email: '2@email.com',
    password_hash: '4_hash',
    salary: 12335.22 
  },
  {
    first_name: 'Rosana',
    last_name: 'C.',
    email: '3@email.com',
    password_hash: '5_hash',
    salary: 6456.123 
  },
];

const insert = knex('users').insert(data);

console.log(insert.toString());
console.log(insert.toSQL().toNative());

insert.then(data => {
  console.log(data);
}).catch(e => {
  console.log('ERRO:', e.message);
}).finally(() => {
  knex.destroy();
});
