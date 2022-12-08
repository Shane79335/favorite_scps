defmodule FavoriteScps.Repo do
  use Ecto.Repo,
    otp_app: :favorite_scps,
    adapter: Ecto.Adapters.Postgres
end
