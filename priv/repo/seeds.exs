# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Peak.Repo.insert!(%Peak.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Peak.{Repo, Summit, MountainRange}

himalaya = Repo.insert! %MountainRange{
  name: "Himalaya"
}

pyreness = Repo.insert! %MountainRange{
  name: "Pyreness"
}

alps = Repo.insert! %MountainRange{
  name: "Alps"
}

andes = Repo.insert! %MountainRange{
  name: "Andes"
}

rocky_mountains = Repo.insert! %MountainRange{
  name: "Rocky Mountains"
}

hindu_kush = Repo.insert! %MountainRange{
  name: "Hindu Kush"
}

Repo.insert! %Summit{
  name: "Mount Everest",
  height: 8848,
  mountain_range: himalaya
}

Repo.insert! %Summit{
  name: "Pica d'Estats",
  height: 3143,
  mountain_range: pyreness
}

Repo.insert! %Summit{
  name: "Mont Blanc",
  height: 4808,
  mountain_range: alps
}

Repo.insert! %Summit{
  name: "Tirich Mir",
  height: 7708,
  mountain_range: hindu_kush
}

Repo.insert! %Summit{
  name: "Mount Elbert",
  height: 4401,
  mountain_range: rocky_mountains
}

Repo.insert! %Summit{
  name: "Mount Everest",
  height: 8848,
  mountain_range: himalaya
}
