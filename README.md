# Dotenv

WIP now..

Load environment variables from a .env file.

## Example

```typ
#import "@preview/dotenv:0.0.1": env, env_load

#env // default read ".env" in root directory

#let custom_env = env_load(".env")
```

with the following .env file:

```ini
# .env
FOO_IN_ROOT=bar

# .env.example
FOO_IN_EXAMPLE=baz
```
