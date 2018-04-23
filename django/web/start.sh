#!/bin/bash 
#
docker exec -d mysql mysql -uroot -p123456 -e "create database blog;"
docker build -t kangaroo/django-app .
docker run --name django \
-v /usr/src/kangaroo \
-v /usr/src/kangaroo/static \
--link mysql:mysql \
--link redis:redis \
-p 12000:8000 \
-d kangaroo/django-app /usr/local/bin/uwsgi --http :8000 --chdir /usr/src/kangaroo -w kangaroo.wsgi

#-d feiyu/django-app /usr/local/bin/gunicorn myblog.wsgi:application -w 1 -b :8000
