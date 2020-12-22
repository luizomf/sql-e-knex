module.exports = {
  client: 'mysql2',
  connection: {
    database: 'base_de_dados',
    user: 'usuario',
    password: 'senha'
  },
  pool: {
    min: 2,
    max: 10
  },
  migrations: {
    tableName: 'knex_migrations'
  }
};
