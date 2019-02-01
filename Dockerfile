FROM node:latest
LABEL maintainer="Jason Lam <jlam@palo-it.com>"

RUN npm install -g json-server && \
    mkdir /data && \
    echo '{"posts":[],"comments":[]}' > /data/db.json;

EXPOSE 3000
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
