# Database_Final

## 環境

### mysql

若跑setup.sh的話
- container名字 : Anime_DB
- mysql username : root
- mysql password : 123
- mysql listen port : 3306

## 檔案介紹

### mysql

- setup.sh : pull下dockerhub上的mysql image並執行成container
- clean.sh : 停掉並清除目前執行的mysql container

## [docker指令](https://joshhu.gitbooks.io/dockercommands/content/Containers/ContainersBasic.html)

### docker stats

看stats 狀態

### docker port [ipfs_host]

看ipfs_host用哪些port

### docker ps -a

看所有container狀態

### docker stop & docker rm [ipfs_host]

關掉container

### docker run

> docker run -d --name web -p 8080:80 joshhu/webdemo

- -d : 背景執行
- --name : container的名稱

### 刪除image file

> docker rmi [imagename]

若不行
> docker container rm [id]

### 看container IP

> docker inspect [container name] | grep "IPAddress"

### docker進入container

> docker exec -it [container name] bash

### docker run mysql

> docker run --name Anime_DB -e MYSQL_ROOT_PASSWORD=123 -d mysql

## mysql指令

### 進入root權限

> mysql -uroot -p

輸入密碼

### 查看目前database
show databases;

## Reference

[express+mysql](https://dotblogs.com.tw/explooosion/2016/07/18/010601)
[mysql Docker設定](https://medium.com/@lvthillo/customize-your-mysql-database-in-docker-723ffd59d8fb)
[dockerhub mysql](https://hub.docker.com/_/mysql/)
[dodcker tutorial](https://www.youtube.com/watch?v=YFl2mCHdv24)
[docker stackoverflow指令](https://stackoverflow.com/questions/16840409/how-to-list-containers-in-docker)
[docker mysql 中文介紹](https://peihsinsu.gitbooks.io/docker-note-book/content/common-docker-mysql.html)
