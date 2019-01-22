FROM busybox 
WORKDIR /tmp
RUN wget https://dl.k8s.io/v1.12.5/kubernetes-server-linux-amd64.tar.gz
