#!/bin/bash

$test_post = curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"test@test.com","comment":"Teste de comentario","content_id":1}'

curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"first post!","content_id":1}'
