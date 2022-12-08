defmodule FavoriteScps.Repo.Migrations.AddOwnershipFavoriteScps do
  use Ecto.Migration

  def change do
    alter table("SCPS") do
      add :user_id, references(:users)
    end
  end
end
