#let env_load(path) = {
  let arr = read(path).split(regex("#.*\r?\n|\r?\n")).filter(it => it.trim() != "").map(line => {
    let parts = line.split("=")
    let key = parts.at(0).trim()
    if (key != "") {
      if (parts.len() > 1) {
        (key, parts.at(1).trim())
      } else {
        (key, "")
      }
    }
  }).dedup()

  let obj = (:)

  for item in arr {
    obj.insert(item.at(0), item.at(1))
  }

  obj
}
