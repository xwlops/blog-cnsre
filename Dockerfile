FROM nginx:latest

# 移除 Nginx 默认配置
RUN rm /etc/nginx/conf.d/default.conf

# 复制自定义 Nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/
# 复制证书
RUN mkdir -p /etc/nginx/cert
COPY /cert /etc/nginx/cert/
# 复制站点静态文件
COPY /public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]