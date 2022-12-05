import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :ap_chem, ApChem.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ap_chem_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ap_chem, ApChemWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "M3/N80AafmG9Gi7Jb2UdgKil/9/pop3P400reKleu0Gtg4bvvDshJ2ytg3f/Zjdy",
  server: false

# In test we don't send emails.
config :ap_chem, ApChem.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
