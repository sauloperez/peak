defmodule Peak.Repo.Migrations.CreateSummits do
  use Ecto.Migration

  def change do
    create table(:summits) do
      add :name, :string
      add :height, :integer

      timestamps()
    end

  end
end
