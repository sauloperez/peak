defmodule Peak.Repo.Migrations.SummitBelongsToMountainRange do
  use Ecto.Migration

  def change do
    alter table(:summits) do
      add :mountain_range_id, references(:mountain_ranges)
    end
  end
end
