# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_base, PhoenixBase.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "i4Pg3D5vu/Te35fx8rzcpY8zayDWPyeDRk3ARx1/97FkxfFKGLZIYRRHB12/s0qv",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixBase.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configure Ecto Repos
config :phoenix_base, ecto_repos: [PhoenixBase.Repo]

# Configure Phoenix to use Slime instead of EEX
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

# Configure Slime
config :slime, :keep_lines, true
