defmodule FavoriteScpsWeb.DashboardController  do
  use FavoriteScpsWeb, :controller
  alias FavoriteScps.Repo
  alias FavoriteScps.User

  plug :get_user_from_session

  def index(conn, _params) do
    IO.inspect(conn.assigns.authenticated_user)
    render(conn, "index.html", user: conn.assigns.authenticated_user)
  end

  def get_user_from_session(conn, _opts) do
    token = get_session(conn, :user_token)
    {:ok, user_id} = Phoenix.Token.verify(FavoriteScpsWeb.Endpoint, "THIS_IS_A_BAD_SECRET", token)
    user =
      User
      |> Repo.get(user_id)
      |> Repo.preload([:scp])
    assign(conn, :authenticated_user, user)
  end
end
