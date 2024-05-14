cargo build --release --target wasm32-unknown-unknown

cp ./target/wasm32-unknown-unknown/release/dotenv.wasm ./

typst c .\dotenv.typ .\.temp\temp.pdf
