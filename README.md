## Build log
```sh
npm create vite@latest react-wasm-pwa-template -- --template react-ts
cd ./react-wasm-pwa-template
npm install

cargo new --lib wasm
cd ./wasm
```

Create [`wasm/.gitignore`](./wasm/.gitignore).

Edit [`wasm/Cargo.toml`](./wasm/Cargo.toml).

Edit [wasm/src/lib.rs](./wasm/src/lib.rs).

```sh
cargo build --target wasm32-unknown-unknown --release

# Required execute `cargo install wasm-bindgen-cli`.
wasm-bindgen --target web --out-dir ./pkg ./target/wasm32-unknown-unknown/release/wasm.wasm

cd ../
ln -s ./wasm/pkg/wasm_bg.wasm ./public/wasm_bg.wasm
```

Edit [`src/App.tsx`](./src/App.tsx).
