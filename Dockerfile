FROM --platform=${TARGETPLATFORM} jc21/nginx-proxy-manager:latest
LABEL org.label-schema.version=2.9.18
COPY .bashrc /root/.bashrc
