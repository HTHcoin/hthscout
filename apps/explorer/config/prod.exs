import Config

# Configures the database
config :explorer, Explorer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "Cale7112",
  database: "blockscout",
  hostname: "localhost",
  pool_size: 50,
  ssl: [
    certfile: "priv/cert/cert.pem",
    keyfile: "priv/cert/privkey.pem",
    versions: [:"tlsv1.2", :"tlsv1.3"],
    compress: true
  ],
  timeout: 30_000,
  migration_lock: nil

# Configures API the database
config :explorer, Explorer.Repo.Replica1,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

# Configures Account database
config :explorer, Explorer.Repo.Account,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.PolygonEdge,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.PolygonZkevm,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.RSK,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.Shibarium,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.Suave,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Repo.BridgedTokens,
  prepare: :unnamed,
  timeout: :timer.seconds(60)

config :explorer, Explorer.Tracer, env: "production", disabled?: true

config :logger, :explorer,
  level: :info,
  path: Path.absname("logs/prod/explorer.log"),
  rotate: %{max_bytes: 52_428_800, keep: 19}

config :logger, :reading_token_functions,
  level: :debug,
  path: Path.absname("logs/prod/explorer/tokens/reading_functions.log"),
  metadata_filter: [fetcher: :token_functions],
  rotate: %{max_bytes: 52_428_800, keep: 19}

config :logger, :token_instances,
  level: :debug,
  path: Path.absname("logs/prod/explorer/tokens/token_instances.log"),
  metadata_filter: [fetcher: :token_instances],
  rotate: %{max_bytes: 52_428_800, keep: 19}
