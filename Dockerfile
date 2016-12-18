FROM python:latest
RUN git clone https://github.com/breakwa11/shadowsocks.git
WORKDIR ./shadowsocks/
RUN bash initcfg.sh
COPY user-config.json ./
chmod 777 user-config.json
WORKDIR ./shadowsocks/
COPY asyncdns.py ./
chmod 777 asyncdns.py
EXPOSE 8388
CMD python server.py
