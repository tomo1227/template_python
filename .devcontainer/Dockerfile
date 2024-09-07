FROM python:3.12-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

RUN apt update && \
    apt install -y --no-install-recommends \
    ca-certificates

RUN apt update && export DEBIAN_FRONTEND=noninteractive \
    && apt purge -y imagemagick imagemagick-6-common
# ENV PATH="$PATH:/home/vscode/.rye/env"

# RUN echo 'source "$HOME/.rye/env"' >> .bashrc
RUN . ~/.bashrc
