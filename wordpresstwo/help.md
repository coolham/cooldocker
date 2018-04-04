

## cmd
```
docker pull wordpress:latest
docker pull mysql:latest

docker run --name mysqlwp -e MYSQL_ROOT_PASSWORD=wordpressdocker -d mysql
docker run --name wordpress --link mysqlwp:mysql -p 80:80 -d wordpress

```
