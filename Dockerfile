FROM jenkins/jnlp-slave:4.3-4
MAINTAINER huisebug Turnbull "huisebug@outlook.com"

#切换到root用户进行安装,因为docker客户端的原因，不可以切换回jenkins用户
USER root

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
