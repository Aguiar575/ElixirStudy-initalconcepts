# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :petex,
  ecto_repos: [Petex.Repo]

# Configures the endpoint
config :petex, PetexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UDW052i/E1MoT6E3tk2vuVmIaMZsZ/YT6VHX7S0KwhLMoysxWA4iyJLfHzv9o85S",
  render_errors: [view: PetexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Petex.PubSub,
  live_view: [signing_salt: "qEJJm5xu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
