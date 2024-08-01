# 使用php:7.4-apache作为基础镜像
FROM php:7.4-apache

# 维护者信息
MAINTAINER Your Name 

# 安装项目所需的依赖项
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip

# 复制项目文件到容器中
COPY . /var/www/html

# 设置工作目录
WORKDIR /var/www/html

# 启动Apache服务
CMD [“apache2-foreground”]