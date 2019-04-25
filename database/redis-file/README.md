# redis镜像

## Dockerfile
- [Dockerfile](Dockerfile)

## 构建镜像

`docker build -t redis .`

## 查看镜像

`docker images`

## 启动redis

`docker run -d --name=redis -p6379:6379  redis `
