defmodule MachOne.Dare.Info do
  use Ecto.Schema
  import Ecto.Changeset

  schema "information" do
    field :text, :string
    field :votes_in_favor, :integer

    timestamps()
  end

  @doc false
  def changeset(info, attrs) do
    info
    |> cast(attrs, [:text, :votes_in_favor])
    |> validate_required([:text, :votes_in_favor])
  end
end
