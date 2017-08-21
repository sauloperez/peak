defmodule Peak.Repo.Migrations.CreateMountainRange do
  use Ecto.Migration

  def change do
    create table(:mountain_ranges) do
      add :name, :string

      timestamps()
    end

    create index(:mountain_ranges, [:name])
  end
end
