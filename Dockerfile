FROM hayd/alpine-deno:1.9.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]

#ENTRYPOINT ["document-creator.ts"]

#CMD ["run", "--allow-net", "document-creator.ts"]