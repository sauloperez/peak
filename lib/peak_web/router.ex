defmodule PeakWeb.Router do
  use PeakWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PeakWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/summits", SummitController
  end

  # Other scopes may use custom stacks.
  # scope "/api", PeakWeb do
  #   pipe_through :api
  # end
end
