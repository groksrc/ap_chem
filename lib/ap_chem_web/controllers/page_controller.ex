defmodule ApChemWeb.PageController do
  use ApChemWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
