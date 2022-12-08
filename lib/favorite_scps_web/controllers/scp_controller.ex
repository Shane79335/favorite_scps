defmodule FavoriteScpsWeb.ScpController do
  use FavoriteScpsWeb, :controller

  alias FavoriteScps.Repo
  alias FavoriteScps.Scp
  alias FavoriteScps.User

  plug :get_user_from_session

  def edit(conn, params) do
    scp = Repo.get(Scp, params["id"])

    authenticated_user_id = conn.assigns.authenticated_user.id
    scp_changeset = Ecto.Changeset.change(scp)

    case scp.user_id do
      ^authenticated_user_id -> render(conn, "edit.html", unauthorized: false, scp_id: scp.id, changeset: scp_changeset)
      _ -> render(conn, "edit.html", unauthorized: true)
    end
  end

  def update(conn, params) do
    scp = Repo.get(Scp, params["id"])
    changeset = Scp.changeset(scp, params["scp"])

    case changeset.valid? do
      true ->
        Repo.update!(changeset)
        redirect(conn, to: Routes.dashboard_path(conn, :index))

      false ->
        # Redirect back to the edit and show errors.
        redirect(conn, to: Routes.dashboard_path(conn, :index))
    end
  end

  def index(conn, _params) do
     scp =
     Scp
     |> Repo.all()
     |> Repo.preload([:user])
    render(conn, "index.html", scp: scp)
  end

  def get_user_from_session(conn, _opts) do
    token = get_session(conn, :user_token)
    {:ok, user_id} = Phoenix.Token.verify(FavoriteScpsWeb.Endpoint, "THIS_IS_A_BAD_SECRET", token)
    user =
      User
      |> Repo.get(user_id)
      |> Repo.preload([:games])
    assign(conn, :authenticated_user, user)
  end
end
