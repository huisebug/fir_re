FROM huisebug/jenkinsbuild:jmndk
#安装dotnet，asp3.1
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
&& dpkg -i packages-microsoft-prod.deb \
&& apt-get update \
&& apt-get install -y apt-transport-https dotnet-sdk-3.1
