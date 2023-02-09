FROM node:12-alpine

LABEL \
  maintainer="sergioko <s29585476@gmail.com>" \
  org.opencontainers.image.title="dockerhub-description" \
  org.opencontainers.image.description="An action to update a Docker Hub repository description from README.md" \
  org.opencontainers.image.authors="sergioko <s29585476@gmail.com>" \
  org.opencontainers.image.url="https://github.com/test-gha-market/dockerhub-description" \
  org.opencontainers.image.vendor="sergioko" \
  org.opencontainers.image.licenses="MIT"

COPY LICENSE README.md /

COPY dist/index.js /index.js

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
