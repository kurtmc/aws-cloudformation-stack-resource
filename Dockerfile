FROM alpine
RUN apk --no-cache add py-pip curl ca-certificates \
  && pip install awscli \
  && curl -Ls https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 > /usr/bin/jq && chmod +x /usr/bin/jq
ADD bin /opt/resource
