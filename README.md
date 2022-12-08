# FavoriteScps

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

  # Project_Website_Favorite_SCPS

This project will be a website that allows users to create their own accounts and write into the database their favorite SCPS. When first getting on the website there will be two options. Either login in or sign up. Signing up will have you create use your email as an username and then creating a password that is at least 10 characters long. The password will be encoded using argon2 . When logging on the user will have the option to fill in 5 boxes that will have the fields of what the SCP is. There fields are firstly which SCP it is. A basic summary of the scp if the user wishes to make one. A picture of the SCP in question if there is one available for it. Finally a space that are related to the scp.

                An example would be SCP-173
                SCP: 173
                Basic Summary: SCP 173 is statue that when you look away from it. It comes up to you and snaps your neck.
                Picture: Unavaible
                Related: SCP-650


database quick tests
alias FavoriteScps.Repo

#alias FavoriteScps.User
#user = %User{}
#params = %{email: "NathanielClarkWITH@ucwv.edu", name: "Shane Clark", password: "123456789abcde", phone_number: "1111111111"}
#recompile
#User.changeset(user, params)

#Repo.insert(changeset)

scp
#alias FavoriteScps.Scp
#scp = %Scp{}
#params = %{title: "SCP-1230", descrption: "This is a book that when reading the first page that says A hero is born you will have a dream when you fall asleep where you are the hero of the story.", user_id: 4}
#recompile
#Scp.changeset(scp, params)


