defmodule MachOne.Dares.Dare do
  use Ecto.Schema
  import Ecto.Changeset

  schema "dares" do
    field :text, :string
    field :votes_in_favor, :integer

    timestamps()
  end

  @doc false
  def changeset(dare, attrs) do
    dare
    |> cast(attrs, [:text, :votes_in_favor])
    |> validate_required([:text, :votes_in_favor])
  end
end
