#!/bin/bash

echo "[+] Running simulated attack on web server..."

# Simulate web fuzzing
for i in {1..5}; do
    for word in admin login dashboard index.php phpinfo.php robots.txt; do
        curl -s -o /dev/null -A "burpsuite" http://localhost:8080/$word
    done
done

# Simulate SQL injection
curl -A "sqlmap/1.5" "http://localhost:8080/index.php?id=1' OR '1'='1"

# Simulate login brute-force
for user in admin root test; do
    curl -s -X POST http://localhost:8080/login -d "user=$user&pass=password"
done

echo "[+] Done."

