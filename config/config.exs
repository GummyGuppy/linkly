import Config

config :linkly, Linkly.Repo,
  database: "postgres",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 5433,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

  config :linkly, ecto_repos: [Linkly.Repo]
