defmodule MachOne.DaresFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MachOne.Dares` context.
  """

  @doc """
  Generate a dare.
  """
  def dare_fixture(attrs \\ %{}) do
    {:ok, dare} =
      attrs
      |> Enum.into(%{
        text: "some text",
        votes_in_favor: 42
      })
      |> MachOne.Dares.create_dare()

    dare
  end
end
