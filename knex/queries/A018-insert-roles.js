/*
-- Insert dados na tabela roles
INSERT INTO roles (name)
VALUES
('POST'),('PUT'),('DELETE'),('GET');
*/
const knex = require('../../knex/config/database');
const insert = knex('roles').insert([
  { name: 'POST' },
  { name: 'PUT' },
  { name: 'DELETE' },
  { name: 'GET' },
]);

insert.then((data) => {
  console.log(data);
}).catch((e) => {
  console.log(e.message);
}).finally(() => {
  knex.destroy();
});