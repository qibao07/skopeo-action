FROM quay.io/skopeo/stable:latest

RUN microdnf install -y gawk

WORKDIR /usr/src

COPY entrypoint.sh .

RUN chmod +x /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]