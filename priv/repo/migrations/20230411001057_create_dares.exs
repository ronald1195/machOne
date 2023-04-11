defmodule MachOne.Repo.Migrations.CreateDares do
  use Ecto.Migration

  def change do
    create table(:dares) do
      add :text, :string
      add :votes_in_favor, :integer

      timestamps()
    end
  end
end
