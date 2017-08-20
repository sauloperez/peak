defmodule PeakWeb.LayoutView do
  use PeakWeb, :view

  def title do
    "Peak"
  end

  def active_class(conn, path) do
    current_path = Path.join(["/" | conn.path_info])
    if path == current_path do
      "active"
    else
      nil
    end
  end
end
