#!/bin/bash
docker pull mysql
docker run --name Anime_DB -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123 -d mysql

