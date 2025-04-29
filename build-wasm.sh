#!/bin/bash

pushd ./wasm
cargo build --target wasm32-unknown-unknown --release && \
  wasm-bindgen --target web --out-dir ./pkg ./target/wasm32-unknown-unknown/release/wasm.wasm
popd
cp ./wasm/pkg/wasm_bg.wasm ./public/wasm_bg.wasm
