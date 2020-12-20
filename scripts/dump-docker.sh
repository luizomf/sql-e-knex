#!/bin/bash
docker exec mysql_cursos /usr/bin/mysqldump -uroot --password=senha base_de_dados > backups/0001-backup.sql