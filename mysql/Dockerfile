FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE=Anime
ENV MYSQL_USER jimmy
ENV MYSQL_PASSWORD jimmy

COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
EXPOSE 3306
