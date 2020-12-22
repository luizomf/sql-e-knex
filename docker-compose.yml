version: "3"
services: 
  mysql_knex:
    container_name: mysql_knex
    hostname: mysql_knex
    image: mysql
    restart: always
    command:
      - --default-authentication-plugin=mysql_native_password
      - --character-set-server=utf8mb4
      - --collation-server=utf8mb4_unicode_ci
      - --innodb_force_recovery=0
    volumes: 
      - ~/.MySQLDBData/mysqlonly/mysql_knex:/var/lib/mysql
    ports:
      - 3306:3306
    environment:
      MYSQL_ROOT_PASSWORD: senha
      MYSQL_DATABASE: base_de_dados
      MYSQL_USER: usuario
      MYSQL_PASSWORD: senha
      TZ: America/Sao_Paulo
