// TODO: add line regex that remove comments
#let env_load(path) = {
  let arr = read(path)
    .split(regex("\r?\n"))
    .filter(it => it != "")
    .map((line) => {
      let parts = line.split("=")
      let key = parts.at(0)
      if (key != "") {
        if (parts.len() > 1) {
          (key, parts.at(1))
        } else {
          (key, "")
        }
      }
    })
    .dedup()

  let obj = (:)

  for item in arr {
    obj.insert(item.at(0), item.at(1))
  }

  obj
}

#let env = env_load("/.env")
