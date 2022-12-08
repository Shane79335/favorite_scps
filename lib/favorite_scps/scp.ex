defmodule FavoriteScps.Scp do
  use Ecto.Schema
  import Ecto.Changeset

  alias FavoriteScps.User

  schema "scp" do
    field :title, :string
    field :descrption, :string
    field :related_scps, :string
    field :scp_art, :string

    belongs_to(:user, User)
    timestamps()
  end

  def changeset(scp, params \\ %{}) do
    scp
    |> cast(params, [:title, :descrption, :user_id, :related_scps, :scp_art])
    |> validate_length(:title, min: 7)
    |> validate_format(:title, ~r/SCP-/)
  end


end
