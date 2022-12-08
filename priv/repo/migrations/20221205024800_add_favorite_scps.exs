defmodule FavoriteScps.Repo.Migrations.AddFavoriteScps do
  use Ecto.Migration

  def change do
    create table("SCPS") do
      add :title, :string
      add :descrption, :string

      timestamps()
    end
  end
end
