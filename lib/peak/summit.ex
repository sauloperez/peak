defmodule Peak.Summit do
  use Ecto.Schema
  import Ecto.Changeset
  alias Peak.Summit


  schema "summits" do
    field :height, :integer
    field :name, :string
    belongs_to :mountain_range, Peak.MountainRange

    timestamps()
  end

  @doc false
  def changeset(%Summit{} = summit, attrs) do
    summit
    |> cast(attrs, [:name, :height])
    |> validate_required([:name, :height])
  end
end
