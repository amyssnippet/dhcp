# Distributed HPC Docker Documentation

## Steps:

### 1. `docker pull amyssnippetclg/dhpc:v1`

### 2. `docker run -it amyssnippetclg/dhpc:v1 <ip> <port>`

`docker run -it -d --name ray-worker --restart always amyssnippetclg/dhpc:v1 10.6.5.26 6327
`

### 3. 
```
docker run -d \
  --name ray-worker \
  --restart always \
  amyssnippetclg/dhpc:v1 \
  "IP=10.3.2.7; PORT=6379; echo Starting Ray at \$IP:\$PORT; ray start --address=\"\$IP:\$PORT\" && tail -f /dev/null"
```
### 4. `docker run -d --name ray-worker --restart always amyssnippetclg/dhpc:v1 "IP=10.3.2.7; PORT=6379; echo Starting Ray at %IP%:%PORT% && ray start --address=\"%IP%:%PORT%\" && tail -f NUL"`

### 5. `docker run -d --name ray-worker --restart always amyssnippetclg/dhpc:v1 bash -c "IP=10.3.2.7; PORT=6379; echo Starting Ray at \$IP:\$PORT; ray start --address=\$IP:\$PORT && tail -f /dev/null"`
