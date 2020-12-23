exports.up = function(knex) {
  return knex.schema.createTable('users_roles', (table) => {
    table.integer('user_id').unsigned();
    table.foreign('user_id')
      .references('users.id')
      .onDelete('CASCADE')
      .onUpdate('CASCADE');
    table.integer('role_id').unsigned();
    table.foreign('role_id')
      .references('roles.id')
      .onDelete('CASCADE')
      .onUpdate('CASCADE');
    table.primary(['user_id', 'role_id']);
  });
};

exports.down = function(knex) {
  return knex.schema.dropTable('users_roles');
};
