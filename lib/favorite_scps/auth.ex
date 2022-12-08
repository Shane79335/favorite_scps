defmodule FavoriteScps.Auth do
  alias FavoriteScps.Repo
  alias FavoriteScps.User

  def authenticate(email, password) do
    with %User{} = user <- Repo.get_by(User, email: email),
         true <- Argon2.verify_pass(password, user.password_hash) do
      user
    else
      _ -> nil
    end
  end
end
