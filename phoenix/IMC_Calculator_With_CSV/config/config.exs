# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :weabanex,
  ecto_repos: [Weabanex.Repo]

# Configures the endpoint
config :weabanex, WeabanexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NGyM9Ge0arIvehfB+kBkZND3K8A0XJ9NhlAdSOQ4nciA6UJLOamCp6g38cnrwAYO",
  render_errors: [view: WeabanexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Weabanex.PubSub,
  live_view: [signing_salt: "Mye12VLI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
