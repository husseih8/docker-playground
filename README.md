
A lightweight, Dockerized environment to simulate some events against a webserver, collect the logs, and generate/transform these into structured JSON events using fluentd. 

These events can be pushed to a data lake or a SIEM, but will come back to this at a later point - as the main objective here is getting comfortable with working with Docker, and thinking of different ways it can be utilised from a Security Operations point of view.

You can clone and run the below
```sh
make rebuild
```
This will automate the docker compose build and up. 

Can open a seperate terminal to generate some logs for fluentd to collect/transform into JSON or can run the shell scripts from the adversary container
```sh
curl http://localhost:8080
```

Since the nginx logs are being tailed you can go into the below location in an adjacent window, to test
```sh
docker exec -it fluentd-log-collector bash 
--> cd /fluentd/output/nginx.log
```

