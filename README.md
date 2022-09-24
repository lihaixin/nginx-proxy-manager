## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/nginx-proxy-manager -t lihaixin/nginx-proxy-manager:2.9.18 .  --push
```

# nginx-proxy-manager
Nginx反向代理，免费的 SSL，而无需对 Nginx 或 Letsencrypt 有太多了解,就能直观配置好反向代理！

## 终端界面
```
                              __          __         _                                   
                               \ \        / /        | |                                  
                                \ \  /\  / /    ___  | |   ___    ___    _ __ ___     ___ 
                                 \ \/  \/ /    / _ \ | |  / __|  / _ \  | '_ ` _ \   / _ \
                                  \  /\  /    |  __/ | | | (__  | (_) | | | | | | | |  __/
                                   \/  \/      \___| |_|  \___|  \___/  |_| |_| |_|  \___|
                                                                                          
                                                                                          
    ___    __   _  _                              _                                                                  
   |__ \  /_ | | || |                            (_)                                                                 
      ) |  | | | || |_   ______   _ __     __ _   _   _ __   __  __  _ __    _ __    ___   __  __  _   _   _ __ ___  
     / /   | | |__   _| |______| | '_ \   / _` | | | | '_ \  \ \/ / | '_ \  | '__|  / _ \  \ \/ / | | | | | '_ ` _ \ 
    / /_   | |    | |            | | | | | (_| | | | | | | |  >  <  | |_) | | |    | (_) |  >  <  | |_| | | | | | | |
   |____|  |_|    |_|            |_| |_|  \__, | |_| |_| |_| /_/\_\ | .__/  |_|     \___/  /_/\_\  \__, | |_| |_| |_|
                                           __/ |                    | |                             __/ |            
                                          |___/                     |_|                            |___/             
                                                                                   
                                                                                   
                                        __ _   _ __     __ _    __ _    ___   _ __ 
                                       / _` | | '_ \   / _` |  / _` |  / _ \ | '__|
                                      | (_| | | | | | | (_| | | (_| | |  __/ | |   
                                       \__,_| |_| |_|  \__,_|  \__, |  \___| |_|   
                                                                __/ |              
                                                               |___/               
 # ---------------------------------------------------------------------------------------------------------------- #
 # Version 2.9.18 (cce73be) 2022-03-31 05:46:34 UTC, OpenResty 1.19.9.1, debian 10 (buster), Certbot certbot 1.30.0
 # Nginx(外网IP)管理地址: https://*.*.*.*:81   默认管理员用户：Email: admin@example.com Password: changeme 
 # Nginx(内网IP)管理地址: https://172.17.0.214:81   默认管理员用户：Email: admin@example.com Password: changeme 
 # ---------------------------------------------------------------------------------------------------------------- #
```

## 安装
### CLI
```
docker run -id \
    --restart=always \
    --name npm \
    --hostname npm \
    --network=host \
    - v /root/data:/data \
    - v /root/letsencrypt:/etc/letsencrypt \
    lihaixin/nginx-proxy-manager
```
### docker-compose.yml
```
version: '3'
services:
  npm:
    image: 'lihaixin/nginx-proxy-manager'
    container_name: npm
    hostname: npm
    restart: always
    network_mode: "host"
#    ports:
#      - '80:80'
#      - '81:81'
#      - '443:443'
    environment:
      DISABLE_IPV6: 'true'
    volumes:
      - /root/data:/data
      - /root/letsencrypt:/etc/letsencrypt
```
