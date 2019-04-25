# simple-nginx-docker
简单搭建nginx服务器

## 构建
```
cd Dockerfile-hello
docker build . -t sample:nginx
```

## 查看
```
docker images
```

## 运行
```
docker run -d -p 80:80 sample:nginx
```
