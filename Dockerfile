FROM debian:10
MAINTAINER huisebug Turnbull "huisebug@outlook.com"

#替换dibian源为阿里云源
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
&& sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
#修改时区
&& apt-get install -y tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
#安装基础工具
&& apt-get -y install vim net-tools less procps telnet wget curl \
#安装nodejs环境
&& curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
&& apt-get -y install nodejs \
#安装淘宝镜像，解决国外源问题
&& npm install -g cnpm --registry=https://registry.npm.taobao.org
