<!--
 * @Author: Wenlong Xue 
 * @Date: 2023-10-26 10:22:47
 * @LastEditors: Wenlong Xue 
 * @LastEditTime: 2023-11-06 15:06:17
 * @FilePath: /blog/README.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
# SRE运维博客

这是一个使用 Hugo 框架搭建的静态博客网站，用于记录 SRE 运维方面的知识和经验。该项目提供完整的代码、Dockerfile 以及部署脚本，可以方便地在本地和服务器环境下构建和运行博客系统。

## 项目结构

```
├── Dockerfile // Docker镜像构建文件
├── README.md  // 说明文档
├── archetypes // Markdown文章模板
├── config // Hugo配置目录
├── content // Markdown文章内容
├── deploy-docker-compose.sh // Docker Compose部署脚本
├── nginx.conf // Nginx配置文件
├── public // 构建输出的静态网站目录
├── release  // 存放一些CICD类文件
├── resources // Hugo源文件
├── static // 静态资源目录
└── themes // Hugo主题目录
```

## 依赖环境

- Hugo 0.85.0 或更高版本
- Docker

## 本地开发

### 安装 Hugo 

请按照 [Hugo 官方文档](https://gohugo.io/getting-started/installing/) 中的说明安装适用于您操作系统的最新版本 Hugo。

### 启动本地开发服务器

```bash
hugo server
```

Hugo 将会以热重载模式启动本地开发服务器，网站访问 http://localhost:1313 

### 添加新文章

```bash
hugo new posts/my-post.md
```

### 构建静态网站

```bash
hugo -D
```

静态网站文件将生成在 `/public` 目录。

### 本地配置

主要配置在 `config/config.toml` 中，请根据需要调整配置。

## Docker 部署

### 构建 Docker 镜像

```bash
docker build -t cnsre/hugo:base .
```

### 启动容器

```bash
docker run --name cnsre  -d  -p 80:80 -v "$(pwd)":/usr/share/blog -e HUGO_BASE_URL=http://www.cnsre.cn  cnsre/hugo:base
```  

然后访问 http://localhost 查看博客。

容器内的博客源码目录为 `/usr/share/blog`，可以通过挂载本地目录实现代码修改。

## 许可证

该项目使用 MIT 许可证，详见 [LICENSE](/LICENSE) 文件。

----------