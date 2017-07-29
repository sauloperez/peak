defmodule PeakWeb.PageController do
  use PeakWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
