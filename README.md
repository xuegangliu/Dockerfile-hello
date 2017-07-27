# Dockerfile-hello
hello

## build
```
cd Dockerfile-hello
docker build . -t sample:nginx
```

## look
```
docker images
```

## run images
```
docker run -d -p 80:80 sample:nginx
```
