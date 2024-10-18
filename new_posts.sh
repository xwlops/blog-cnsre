#!/bin/bash
#####
# @Author       : xwlops xwlops@gmail.com
# @Date         : 2024-09-02 15:21
# @LastEditors  : xwlops xwlops@gmail.com
# @LastEditTime : 2024-10-18 08:22
# @Description  : Script to generate a new Hugo post and automatically fill in the metadata.
#####

# 更新 PATH 环境变量，添加 hugo 的安装路径
PATH=/opt/homebrew/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
LANG=en_US.UTF-8

# # 获取当前时间
# current_time=$(date +"%y%m%d%H%M%S")
# hugo new posts/$current_time.md

# 获取当前时间
current_time=$(date +"%y%m%d%H%M%S")

# 定义 post_file 变量
post_file="posts/${current_time}.md"

# 创建新的 Hugo 文章
hugo new "$post_file"

# 手动输入标签
read -p "请输入标签（使用逗号分隔多个标签）: " input_tags

# 处理标签，将逗号分隔的标签转换为 Hugo 格式
IFS=',' read -ra tags_array <<< "$input_tags"
formatted_tags=""
for tag in "${tags_array[@]}"; do
    formatted_tags+="$tag"
done

# 删除 `draft: true` 和第一个 `---`
# 使用适用于 macOS 的 sed 语法，-i '' 表示原地编辑且不创建备份
sed -i '' '/draft: true/d' "./content/zh/$post_file"
sed -i '' '1d' "./content/zh/$post_file"

# 创建临时文件并写入新的内容
temp_file="temp_${current_time}.md"
cat > "$temp_file" <<EOF
---
title: "${current_time}"
date: $(date +"%Y-%m-%dT%H:%M:%S%z")
description:
draft: false
# true 为隐藏文章，false 展示
# hideToc: false
# 如 true 则会隐藏目录
# enableToc: true
# 如 true 则会生成目录
# enableTocContent: true
# 如 true 则会生成目录内容
# pinned: true
# 固定文章
# weight: 10000
# 文章排序权重
password: 
# 文章密码
keywords:
# 关键词
-
author: CNSRE
# 作者
authorEmoji: ✍
tags:
- $formatted_tags
categories:
- 类型
# series:
# - 系列
image: https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/cnsre/kubernetes.png
---

> 作者：[SRE运维博客](https://www.cnsre.cn/)
> 博客地址：[https://www.cnsre.cn/](https://www.cnsre.cn/)
> 文章地址：[https://www.cnsre.cn/posts/${current_time}/](https://www.cnsre.cn/posts/${current_time}/)
> 相关话题：[https://www.cnsre.cn/tags/${formatted_tags}/](https://www.cnsre.cn/tags/${formatted_tags}/)

<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4855142804875926"
     crossorigin="anonymous"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
     data-ad-client="ca-pub-4855142804875926"
     data-ad-slot="5670838583"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>

---
> 作者：[SRE运维博客](https://www.cnsre.cn/)
> 博客地址：[https://www.cnsre.cn/](https://www.cnsre.cn/)
> 文章地址：[https://www.cnsre.cn/posts/${current_time}/](https://www.cnsre.cn/posts/${current_time}/)
> 相关话题：[https://www.cnsre.cn/tags/${formatted_tags}/](https://www.cnsre.cn/tags/${formatted_tags}/)
EOF

# 用临时文件内容覆盖原文件
cat "$temp_file" > "./content/zh/$post_file"
rm "$temp_file"

echo "文章已创建并更新: $post_file"
