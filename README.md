## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/nginx-proxy-manager -t lihaixin/nginx-proxy-manager:2.9.18 .  --push
```

# nginx-proxy-manager
Nginx反向代理，免费的 SSL，而无需对 Nginx 或 Letsencrypt 有太多了解
