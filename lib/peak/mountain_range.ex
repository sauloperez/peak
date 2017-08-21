defmodule Peak.MountainRange do
  use Ecto.Schema

  schema "mountain_ranges" do
    field :name, :string
    has_many :summits, Peak.Summit

    timestamps()
  end
end
