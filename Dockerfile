FROM jenkins/inbound-agent:4.3-4
MAINTAINER huisebug Turnbull "huisebug@outlook.com"

#切换到root用户进行安装,因为docker客户端的原因，不可以切换回jenkins用户
USER root

#替换dibian源为阿里云源
RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
&& sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
#修改时区
&& apt-get install -y tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
#安装nodejs环境
&& curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
&& apt-get -y install nodejs \
#安装淘宝镜像，解决国外源问题
&& npm install -g cnpm --registry=https://registry.npm.taobao.org
