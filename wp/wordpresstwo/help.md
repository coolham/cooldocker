

## cmd
```
docker pull wordpress:latest
docker pull mysql:latest

docker run --name mysqlwp -e MYSQL_ROOT_PASSWORD=wordpressdocker -d mysql
docker run --name wordpress --link mysqlwp:mysql -p 80:80 -d wordpress


```

## backup mysql data
```
docker run --name mysqlwp -e MYSQL_ROOT_PASSWORD=wordpressdocker \
			-e MYSQL_DATABASE=wordpress \
			-e MYSQL_USER=wordpress \
			-e MYSQL_PASSWORD=wordpresspwd \
			-v /home/aladdin/mysql:/var/lib/mysql \
			-d mysql

docker exec mysqlwp mysqldump --all-databases \
			--password=wordpressdocker > wordpress.backup

```
