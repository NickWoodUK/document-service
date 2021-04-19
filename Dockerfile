FROM hayd/alpine-deno:1.9.0

ENTRYPOINT ["document-creator.ts"]

#CMD ["run", "--allow-net", "document-creator.ts"]