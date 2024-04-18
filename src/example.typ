#import "./dotenv.typ": env, env_load

Load the environment variable `FOO_IN_ROOT` from the `.env` file in the root of the project: #env.FOO_IN_ROOT

Load the environment variable `FOO_IN_EXAMPLE` from the `.env.example` file of the project: #env_load(".env.example").FOO_IN_EXAMPLE
