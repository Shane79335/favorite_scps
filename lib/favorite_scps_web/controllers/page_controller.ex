defmodule FavoriteScpsWeb.PageController do
  use FavoriteScpsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
