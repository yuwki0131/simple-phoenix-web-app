defmodule GuestBookAppWeb.PageController do
  use GuestBookAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
