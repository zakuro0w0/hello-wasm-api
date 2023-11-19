#!/bin/bash

# Rustコードをビルドしてwasmファイルを生成
cargo build --target wasm32-wasi --release

# wasmファイルをdeployディレクトリにコピー
cp target/wasm32-wasi/release/hello-wasm-api.wasm deploy

# Dockerfile + wasmファイルからdocker imageを作成
docker buildx build --platform wasi/wasm -t zakuro0w0/hello-wasm .

echo "Docker image has been built successfully!"