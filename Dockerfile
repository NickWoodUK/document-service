# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]

RUN apk update && apk add curl

RUN curl -fsSL https://deno.land/x/install/install.sh | sh

RUN echo "hello world"

RUN deno --version

#ENTRYPOINT ["dono"]
#CMD ["run", "--allow-net", "https://deno.land/std/examples/welcome.ts"]
