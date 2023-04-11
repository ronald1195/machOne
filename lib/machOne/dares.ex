defmodule MachOne.Dares do
  @moduledoc """
  The Dares context.
  """

  import Ecto.Query, warn: false
  alias MachOne.Repo

  alias MachOne.Dares.Dare

  @doc """
  Returns the list of dares.

  ## Examples

      iex> list_dares()
      [%Dare{}, ...]

  """
  def list_dares do
    Repo.all(Dare)
  end

  @doc """
  Gets a single dare.

  Raises `Ecto.NoResultsError` if the Dare does not exist.

  ## Examples

      iex> get_dare!(123)
      %Dare{}

      iex> get_dare!(456)
      ** (Ecto.NoResultsError)

  """
  def get_dare!(id), do: Repo.get!(Dare, id)

  @doc """
  Creates a dare.

  ## Examples

      iex> create_dare(%{field: value})
      {:ok, %Dare{}}

      iex> create_dare(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_dare(attrs \\ %{}) do
    %Dare{}
    |> Dare.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a dare.

  ## Examples

      iex> update_dare(dare, %{field: new_value})
      {:ok, %Dare{}}

      iex> update_dare(dare, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_dare(%Dare{} = dare, attrs) do
    dare
    |> Dare.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a dare.

  ## Examples

      iex> delete_dare(dare)
      {:ok, %Dare{}}

      iex> delete_dare(dare)
      {:error, %Ecto.Changeset{}}

  """
  def delete_dare(%Dare{} = dare) do
    Repo.delete(dare)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking dare changes.

  ## Examples

      iex> change_dare(dare)
      %Ecto.Changeset{data: %Dare{}}

  """
  def change_dare(%Dare{} = dare, attrs \\ %{}) do
    Dare.changeset(dare, attrs)
  end
end
