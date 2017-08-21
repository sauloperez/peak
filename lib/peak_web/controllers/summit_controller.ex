defmodule PeakWeb.SummitController do
  use PeakWeb, :controller
  import Ecto.Query
  alias Peak.{
    Summit,
    Repo
  }

  def index(conn, _params) do
    summits = Repo.all from(s in Summit, preload: [:mountain_range])
    render conn, "index.html", summits: summits
  end
end
