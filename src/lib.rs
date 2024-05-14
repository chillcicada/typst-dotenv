use wasm_minimal_protocol::*;

initiate_protocol!();

#[wasm_func]
pub fn test() -> Vec<u8> {
  b"MyGo!!!!!".to_vec()
}

#[wasm_func]
pub fn env_load(ctx: &[u8]) -> Vec<u8> {
  let parsed_ctx = String::from_utf8(ctx.to_vec()).unwrap();
  // TODO
  parsed_ctx.as_bytes().to_vec()
}
