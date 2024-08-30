#!/bin/bash
###
 # @Author: Wenlong Xue 
 # @Date: 2023-12-07 10:42:28
 # @LastEditors: Wenlong Xue 
 # @LastEditTime: 2023-12-15 11:46:36
 # @FilePath: /blog/nwe_posts.sh
 # @Description: 
### 

# 获取当前时间
current_time=$(date +"%y%m%d%H%M%S")
hugo new posts/$current_time.md