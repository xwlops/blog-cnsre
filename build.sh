#!/bin/bash
##### 
# @Author       : Wenlong Xue 
# @Date         : 2024-03-11 16:04
# @LastEditors  : Wenlong Xue 
# @LastEditTime : 2024-03-11 16:07
# @Description  : 
#####

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
LANG=en_US.UTF-8


GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
rm -rf public
hugo
git commit -m "build site"
git push origin "$GIT_BRANCH"
