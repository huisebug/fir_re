FROM huisebug/jenkinsbuild:jmndka

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
