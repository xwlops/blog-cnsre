#!/usr/bin/env bash
###
 # @Author: Wenlong Xue 
 # @Date: 2023-11-05 23:57:49
 # @LastEditors: Wenlong Xue 
 # @LastEditTime: 2023-12-15 14:11:04
 # @FilePath: /blog/deploy-docker-compos.sh
 # @Description: 启动docker
### 
# docker build -t cnsre/hugo:base .
docker stop  cnsre-nginx
docker rm  cnsre-nginx
# docker run --name cnsre  -d  -p 8088:80 -v "$(pwd)":/usr/share/blog -e HUGO_BASE_URL=http://www.cnsre.cn  cnsre/hugo:base

docker run -d \
  -p 8088:80 \
  -v "$(pwd)"/public:/usr/share/nginx/html \
  --name cnsre-nginx \
  nginx