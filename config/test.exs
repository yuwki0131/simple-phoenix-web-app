use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :guest_book_app, GuestBookAppWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :guest_book_app, GuestBookApp.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "guestbook",
  password: "passwd",
  database: "guestbook",
  hostname: "db",
  port: "3306",
  pool: Ecto.Adapters.SQL.Sandbox
