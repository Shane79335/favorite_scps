defmodule FavoriteScpsWeb.UserController do
  use FavoriteScpsWeb,  :controller
  alias FavoriteScps.Repo
  alias FavoriteScps.User

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, params) do
    changeset = User.changeset(%User{}, params["user"])
    {:ok, user} = Repo.insert(changeset)

    render(conn, "create.html", user: user)
  end
end
