#!/bin/bash

docker container run --rm -d --name script -v $PWD/src:/app --network monreseau php:8.4-fpm

docker container run --rm -d --name http -v $PWD/src:/app -v $PWD/config/default.conf:/etc/nginx/conf.d/default.conf --network monreseau nginx:1.27
