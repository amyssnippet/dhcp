# Distributed HPC Docker Documentation

## Steps:

### 1. `docker pull amyssnippetclg/dhpc:v1`

### 2. `docker run -it amyssnippetclg/dhpc:v1 <ip> <port>`

### 3. 
```
docker run -d \
  --name ray-worker \
  --restart always \
  amyssnippetclg/dhpc:v1 \
  "IP=10.3.2.7; PORT=6379; echo Starting Ray at \$IP:\$PORT; ray start --address=\"\$IP:\$PORT\" && tail -f /dev/null"
```
