defmodule PeakWeb.SummitController do
  use PeakWeb, :controller
  alias Peak.{
    Summit,
    Repo
  }

  def index(conn, _params) do
    summits = Repo.all(Summit)
    render conn, "index.html", summits: summits
  end
end
