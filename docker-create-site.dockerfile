FROM alpine:3.18.3

RUN apk add --no-cache python3 curl
RUN apk add --no-cache curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
RUN python3 /tmp/get-pip.py

COPY ./app/ /app/
WORKDIR /app/

RUN pip install mkdocs


ENTRYPOINT ["mkdocs", "build"]


#RUN apk add --no-cache openrc
#RUN rc-update add local default
#COPY mkdocs-serve.start /etc/local.d/
# chmod +x filename.sh
#cd /etc/local.d/mkdocs-serve.start

