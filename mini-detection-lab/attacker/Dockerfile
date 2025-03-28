FROM kalilinux/kali-rolling

RUN apt update && apt install -y \
    nmap \
    hydra \
    curl \
    net-tools

COPY tools.sh /opt/tools.sh 
RUN chmod +x /opt/tools.sh 

ENTRYPOINT ["/opt/tools.sh"]