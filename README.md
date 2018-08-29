# GuestBookApp

## 構成の起動の仕方について

* 展開
(Dockerfile, docker-compose.yml, README.mdのみの状態で)
READMEは上書きされる。

```
$ docker-compose run web mix phx.new . --app guest_book_app
```

* 依存関係取得
```
$ docker-compose run web bash -c "mix deps.get"
```

* DBとか起動
```
$ docker-compose up -d
```

* App Server run
```
$ docker-compose run web bash -c "mix deps.compile && mix ecto.create && mix ecto.migrate"
```

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
