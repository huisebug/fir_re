FROM huisebug/jenkinsbuild:jmndkd

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs
