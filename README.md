# hello-wasm-api

## 目的
- webAPIとして振る舞うコードをwasmファイル化する
- wasmファイルをdockerコンテナとして実行できるようにする
- このコンテナをAWS AppRunnerから実行できるようにする

## build
- コードをビルドしてwasmファイルを得るには以下のコマンドを実行する
- javascriptとのインタラクションは不要なのでwasm-bindgenは使わない
- wasmファイルはwasmtime等のWebAssembly実行環境で実行することを前提としているため、エントリポイントとしてのmain関数を持たせる

```
cargo build --target wasm32-wasi --release
```

- `target/wasm32-wasi/release/`配下に`.wasm`ファイルが出力される
