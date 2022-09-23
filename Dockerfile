FROM --platform=${TARGETPLATFORM} jc21/nginx-proxy-manager:latest
LABEL org.label-schema.version=2.9.18
RUN  apt-get update \
	&& apt-get install -y --no-install-recommends iproute2 net-tools \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
COPY .bashrc /root/.bashrc
