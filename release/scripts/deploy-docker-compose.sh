#!/usr/bin/env bash

# 设置变量，随机6位小写字符
date=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 6 | head -n 1)
# 获取当前脚本的绝对路径
curPath=$(readlink -f "$(dirname "$0")")

# 存储镜像名称
image=cnsre/blog
#prjConfig=/home/ec2-user/biease/config/biease-frontend

# 切换到当前路径
cd $curPath || exit

# 构建镜像，使用不缓存的方式构建
sudo docker login -ucnsre -p qq541881452..
sudo docker build -t ${image}:${date} . --no-cache
sudo docker push ${image}:${date}

# 切换到存储 yaml 文件的目录
cd $curPath/release/docker/compose-file || exit

# 在 docker-compose.yml 中替换镜像名称
sed -i "s#__IMAGE__#${image}:${date}#g" docker-compose.yml
#sed -i "s#__HOST_IP__#$2#g" docker-compose.yml

# setting the config-files home
#mkdir -p ${prjConfig}/
#rm -rf ${prjConfig}/*
#cp -f resources/* ${prjConfig}/

# 启动容器
docker-compose up --force-recreate -d

# 显示运行中的容器信息
docker ps -a