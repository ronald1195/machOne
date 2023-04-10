defmodule MachOne.Repo do
  use Ecto.Repo,
    otp_app: :machOne,
    adapter: Ecto.Adapters.Postgres
end
