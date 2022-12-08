defmodule FavoriteScps.Repo.Migrations.AddRelatedScpsAndScpArt do
  use Ecto.Migration

  def change do
    alter table("SCPS") do
      add :related_scps, :string
      add :scp_art, :string
    end

  end
end
