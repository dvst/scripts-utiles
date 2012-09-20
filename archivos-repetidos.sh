#!/bin/bash
NOMBRE_DIR=`echo $PWD  |sed -e "s/^.*\/\(.*$\)/\1/g"`
echo $NOMBRE_DIR
rm  $NOMBRE_DIR.md5
rm  $NOMBRE_DIR.sql
cfv -rr -C -tmd5
perl -p -i -e "s/ /|/" $NOMBRE_DIR.md5
sqlite3 $NOMBRE_DIR.sql 'create table archivos(md5 varchar(32),archivo text)'
sqlite3 $NOMBRE_DIR.sql '.import $NOMBRE_DIR.md5 archivos'
sqlite3 $NOMBRE_DIR.sql 'select * from archivos where md5 in (select md5  from archivos group by md5 having count(md5) > 1) order by md5' |less
