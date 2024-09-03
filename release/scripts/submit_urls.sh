#!/bin/bash

# 下载 sitemap.xml
curl -o sitemap.xml https://www.cnsre.cn/sitemap.xml

# 从 sitemap.xml 中提取所有的 <loc> 标签内容，保存到 urls.txt
grep -oP '(?<=<loc>)[^<]+' sitemap.xml > urls.txt

# 提交 urls.txt 到百度站长平台
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=https://www.cnsre.cn&token=7iBKKxq1P7UFUqGl"