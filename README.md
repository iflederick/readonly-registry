readonly-registry
=================

Reverse proxy with nginx to have a read-only Docker registry

## Run
Nginx does the reverse proxy to http://registry:5000/, which is
supposed to be another container running on the same host.
Assuming you exposed the port 5000, you can link the containers
easily with something like
```bash
docker run --link registry:registry -p 80:80 readonly-registry
```
