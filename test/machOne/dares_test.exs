defmodule MachOne.DaresTest do
  use MachOne.DataCase

  alias MachOne.Dares

  describe "dares" do
    alias MachOne.Dares.Dare

    import MachOne.DaresFixtures

    @invalid_attrs %{text: nil, votes_in_favor: nil}

    test "list_dares/0 returns all dares" do
      dare = dare_fixture()
      assert Dares.list_dares() == [dare]
    end

    test "get_dare!/1 returns the dare with given id" do
      dare = dare_fixture()
      assert Dares.get_dare!(dare.id) == dare
    end

    test "create_dare/1 with valid data creates a dare" do
      valid_attrs = %{text: "some text", votes_in_favor: 42}

      assert {:ok, %Dare{} = dare} = Dares.create_dare(valid_attrs)
      assert dare.text == "some text"
      assert dare.votes_in_favor == 42
    end

    test "create_dare/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Dares.create_dare(@invalid_attrs)
    end

    test "update_dare/2 with valid data updates the dare" do
      dare = dare_fixture()
      update_attrs = %{text: "some updated text", votes_in_favor: 43}

      assert {:ok, %Dare{} = dare} = Dares.update_dare(dare, update_attrs)
      assert dare.text == "some updated text"
      assert dare.votes_in_favor == 43
    end

    test "update_dare/2 with invalid data returns error changeset" do
      dare = dare_fixture()
      assert {:error, %Ecto.Changeset{}} = Dares.update_dare(dare, @invalid_attrs)
      assert dare == Dares.get_dare!(dare.id)
    end

    test "delete_dare/1 deletes the dare" do
      dare = dare_fixture()
      assert {:ok, %Dare{}} = Dares.delete_dare(dare)
      assert_raise Ecto.NoResultsError, fn -> Dares.get_dare!(dare.id) end
    end

    test "change_dare/1 returns a dare changeset" do
      dare = dare_fixture()
      assert %Ecto.Changeset{} = Dares.change_dare(dare)
    end
  end
end
