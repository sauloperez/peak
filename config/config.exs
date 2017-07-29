# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :peak,
  ecto_repos: [Peak.Repo]

# Configures the endpoint
config :peak, PeakWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ckgpf3nXwVFVkKB/0g9QNVP21/+KiB+TH60dbSEgtkU9EKVq3F+FpYz0ZqivtHzU",
  render_errors: [view: PeakWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Peak.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
