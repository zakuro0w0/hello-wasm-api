# [Choice] Debian OS version (use bullseye on local arm64/Apple Silicon): buster, bullseye
ARG VARIANT="bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/rust:1-${VARIANT}

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# 必要なパッケージをインストールします。
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

USER vscode

# Wasmtimeのバイナリをダウンロードします。
RUN curl https://wasmtime.dev/install.sh -sSf | bash

# Wasmtimeのバイナリへのパスを設定します。
ENV PATH="/root/.wasmtime/bin:${PATH}"
