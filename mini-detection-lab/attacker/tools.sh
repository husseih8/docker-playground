#!/bin/bash

echo "[+] Running simulated attack on web server..."
nmap -sS nginx-server1 -p 80 -Pn
curl http://nginx-server1:80 
echo "[+] Done. "

# Just to get some logs we can use, a basic simulation of a port scan