FROM denoland/deno:debian

ENV DENO_DIR /home/gitpod
ENV DENO_USER gitpod

RUN apt-get update && \     
    apt-get install -y --no-install-recommends \
            git curl unzip ca-certificates 

RUN curl -fsSL https://downloads.slack-edge.com/slack-cli/install.sh | bash

RUN rm /usr/local/bin/slack
RUN mv /root/.slack/bin/slack /usr/local/bin/slack
RUN chmod a+x /usr/local/bin/slack
