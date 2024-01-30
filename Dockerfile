FROM alpine:latest

LABEL "com.github.actions.name" = "Packer AMI Enhanced"
LABEL "com.github.actions.description" = "Use GitHub Action to execute Packer - Validate - Init - Build"
LABEL "com.github.actions.color"="black"
LABEL "com.github.actions.icon"="box"

COPY docker-action /docker-action
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apk add --update --no-cache docker

ENTRYPOINT ["/entrypoint.sh"]
