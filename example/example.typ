#set page(width: auto, height: auto)

#import "../lib.typ": parse_dotenv

```txt
#import "../lib.typ": parse_dotenv

#parse_dotenv("FOO = bar # this is a comment")
```

It will be parsed as:

#parse_dotenv("FOO = bar # this is a comment")

````txt
#let env_code = ```ini
# this is a comment
FOO = bar # this is also a comment
```

#let env = parse_dotenv(env_code)
````

#let env_code = ```ini
# this is a comment
FOO = bar # this is also a comment
```

#let env = parse_dotenv(env_code)

The `env` will be:

#env

Or you can read the content from a .env file:

```txt
// The path is relative to the current file
#let env_raw = read("/.env")

#let env = parse_dotenv(env_raw)
```

The `env` will be:

#let env_raw = read("/.env")

#let env = parse_dotenv(env_raw)

#env
