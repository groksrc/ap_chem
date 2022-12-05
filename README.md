# AP Chem

Welcome to AP Chemistry. This is a mad attempt at an elixir concoction that implements the
ActivityPub spec.

The initial commit has the current schema for the mastodon database as of v4.0.2.

Starting with mastodon v4.0.2 schema created with the commands:

```
git clone https://github.com/mastodon/mastodon.git &&
cd mastodon &&
bundle install;
# fix the connection string
bundle exec db:create &&
bundle exec db:migrate
```

Once the database is available the db layer can be generated with:
```
mix plsm
```

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
