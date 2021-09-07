defmodule Weabanex.Repo do
  use Ecto.Repo,
    otp_app: :weabanex,
    adapter: Ecto.Adapters.Postgres
end
