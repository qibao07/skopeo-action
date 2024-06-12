FROM quay.io/skopeo/stable:latest

WORKDIR /usr/src

COPY entrypoint.sh .

RUN chmod +x /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]