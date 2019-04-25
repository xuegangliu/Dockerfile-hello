## gitlib 搭建
在配置文件的路径行,执行如下脚本
`sudo docker-compose up -d`

### 利用nginx转向代理

在服务器宿主机添加nginx配置

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
