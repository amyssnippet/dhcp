# Distributed HPC Docker Documentation

## Steps:

### 1. `docker pull amyssnippetclg/dhpc:v1`

### 2. `docker run -it amyssnippetclg/dhpc:v1 <ip> <port>`

### 3. ```docker run -d \
  --name ray-worker \
  --restart always \
  amyssnippetclg/dhpc:v1 10.6.5.26 6327
```
