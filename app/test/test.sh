#!/bin/bash

curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"first post!","content_id":1}' 

curl -sv localhost:8000/api/comment/list/1 |grep -i "first post!" > saida.txt

saida="saida.txt"
if [ -s $saida ]
then
   echo "Api ok"
else
   echo "Api fail"
   exit 1 
fi
