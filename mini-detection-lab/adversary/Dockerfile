FROM ubuntu:22.04

RUN apt update && apt install -y \
    nmap \
    curl \
    hydra \
    net-tools \
    iputils-ping \
    dnsutils \
    python3

COPY simple-scan.sh /opt/simple-scan.sh 
RUN chmod +x /opt/simple-scan.sh 

ENTRYPOINT ["/opt/simple-scan.sh"]