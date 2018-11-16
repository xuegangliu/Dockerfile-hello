## gitlib 搭建

`sudo docker-compose up -d`

### 利用nginx转向代理

添加配置

upstream gitlab {
        server 127.0.0.1:10080;
}
server {
    server_name ip;
    listen 80;
    location / {
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass http://gitlab;
    }
}
