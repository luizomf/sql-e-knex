/*
insert into users 
(first_name, last_name, email, password_hash) values
("Helena", "A.", "1@email.com", "3_hash"),
("Joana", "B.", "2@email.com", "4_hash"),
("Rosana", "C.", "3@email.com", "5_hash");
*/
const knex = require('../../knex/config/database');

const insert = knex('users').insert([{
  first_name: 'Joana',
  last_name: 'B.',
  email: 'email_2@email.com',
  password_hash: '4_hash',
  salary: 45885.59
}, {
  first_name: 'Rosana',
  last_name: 'C.',
  email: 'email_3@email.com',
  password_hash: '5_hash',
  salary: 1350.59
},]).then(data => {
  console.log(data);
}).catch(e => {
  console.log('ERROR:', e.message);
}).finally(() => {
  knex.destroy();
})