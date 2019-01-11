# Database_Final

## 懶人包

### 安裝

1. 安裝docker
2. cd mysql
3. ./setup.sh 建立mysql image with our data
4. ./run.sh 跑起這個image成一個類似VM的東西
5. cd ..
6. npm start

### 清理

1. cd mysql
2. ./clean.sh 清掉run.sh跑起來的vm
3. ./remove.sh 清掉setup.sh建立的image

### mysql

若跑setup.sh的話
- container名字 : Anime_DB
- mysql username : root
- mysql password : 123
- mysql listen port : 3306
- optional(用不到，直接用root登入就好了)
    - DB username : jimmy
    - DB password : jimmy

## 架設
### 安裝docker 並啟動
[docker install](https://www.docker.com/)
### 建置Mysql，Anime DB,table的image檔

```
$ cd mysql/
$ ./setup.sh
```

### 跑起Anime DB container

```
$ ./run.sh
```

### 清除Anime DB container

```
$ clean.sh
```

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

或

> mysql -ujimmy -pjimmy
 
### 常用指令
```
$ show databases;   查看所有database

$ use [database];   使用你想用的DB, [database]為你想看的database名稱

$ show tables;      執行上述指令後，執行這個來看該database內的table

$ DESCRIBE [table]  看出你想要看的table裡面的field資訊

```

## config內容補充

1. default-character-set [client] 代表的應該是client傳送query字串的data type(如ascii utf8)
2. utf8分成utf8mb3 , utf8mb4 代表utf8用 3 byte 或 4 byte
3. collation-server : 猜應該適用於server端字串比對時的一些規則
4. character-set-server : 代表應該是server端資料儲存的char型態

## Reference

[express+mysql](https://dotblogs.com.tw/explooosion/2016/07/18/010601)

[mysql Docker設定](https://medium.com/@lvthillo/customize-your-mysql-database-in-docker-723ffd59d8fb)

[dockerhub mysql](https://hub.docker.com/_/mysql/)

[dodcker tutorial](https://www.youtube.com/watch?v=YFl2mCHdv24)

[docker stackoverflow指令](https://stackoverflow.com/questions/16840409/how-to-list-containers-in-docker)

[docker mysql 中文介紹](https://peihsinsu.gitbooks.io/docker-note-book/content/common-docker-mysql.html)

[mysql w3c](https://www.w3resource.com/sql/data-type.php#NUMERIC)

[mysql 語法](http://www.mysqltutorial.org/mysql-show-columns/)

[set mysql charset](https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html)

[charset utf8](https://github.com/ibusybox/mysqlutf8)

[sql insert](https://codeburst.io/insert-with-select-statement-for-columns-with-foreign-key-constraint-in-mysql-with-examples-f9ab57c8e4dd)

[nodejs mysql insert](https://stackoverflow.com/questions/21779528/insert-into-fails-with-node-mysql)

[nodejs insert Date data](https://www.tutorialspoint.com/How-to-insert-date-object-in-MySQL-using-Python)

[mysql language config intro](https://mariadb.com/kb/en/library/server-system-variables/#character_set_client)

[mysql language config intro](https://dev.mysql.com/doc/refman/5.7/en/charset-server.html)

[nodejs mysql prevent sql injection](http://www.dengzhr.com/node-js/877)
