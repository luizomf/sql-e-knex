const knex = require('../config/database');

knex('users')
  .then(data => {
    console.log(data);
  })
  .catch(e => {
    
  })
  .finally(() => {
    knex.destroy();
  });