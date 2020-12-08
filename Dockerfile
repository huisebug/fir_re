FROM huisebug/jenkinsbuild:jmndk
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
&& dpkg -i packages-microsoft-prod.deb \
 && apt-get update \
 &&  apt-get install -y apt-transport-https \
 &&  apt-get update \
 &&  apt-get install -y dotnet-sdk-5.0
