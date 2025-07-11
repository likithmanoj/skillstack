defmodule Skillstack.Repo do
  use Ecto.Repo,
    otp_app: :skillstack,
    adapter: Ecto.Adapters.Postgres
end
