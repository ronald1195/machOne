defmodule MachOne.DareFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MachOne.Dare` context.
  """

  @doc """
  Generate a info.
  """
  def info_fixture(attrs \\ %{}) do
    {:ok, info} =
      attrs
      |> Enum.into(%{
        text: "some text",
        votes_in_favor: 42
      })
      |> MachOne.Dare.create_info()

    info
  end
end
