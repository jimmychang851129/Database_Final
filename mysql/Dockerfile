FROM mysql:5.7
#ENV character-set-server=utf8
#ENV collation-server=utf8mb4_unicode_ci
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE=Anime
ENV MYSQL_USER jimmy
ENV MYSQL_PASSWORD jimmy
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
COPY my.cnf /etc/mysql/conf.d/mysqlutf8.cnf
CMD ["--character-set-server=utf8mb3", "--collation-server=utf8mb3_general_ci"]
EXPOSE 3306
