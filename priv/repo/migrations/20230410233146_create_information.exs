defmodule MachOne.Repo.Migrations.CreateInformation do
  use Ecto.Migration

  def change do
    create table(:information) do
      add :text, :string
      add :votes_in_favor, :integer

      timestamps()
    end
  end
end
