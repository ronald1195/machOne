defmodule MachOne.DareTest do
  use MachOne.DataCase

  alias MachOne.Dare

  describe "information" do
    alias MachOne.Dare.Info

    import MachOne.DareFixtures

    @invalid_attrs %{text: nil, votes_in_favor: nil}

    test "list_information/0 returns all information" do
      info = info_fixture()
      assert Dare.list_information() == [info]
    end

    test "get_info!/1 returns the info with given id" do
      info = info_fixture()
      assert Dare.get_info!(info.id) == info
    end

    test "create_info/1 with valid data creates a info" do
      valid_attrs = %{text: "some text", votes_in_favor: 42}

      assert {:ok, %Info{} = info} = Dare.create_info(valid_attrs)
      assert info.text == "some text"
      assert info.votes_in_favor == 42
    end

    test "create_info/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Dare.create_info(@invalid_attrs)
    end

    test "update_info/2 with valid data updates the info" do
      info = info_fixture()
      update_attrs = %{text: "some updated text", votes_in_favor: 43}

      assert {:ok, %Info{} = info} = Dare.update_info(info, update_attrs)
      assert info.text == "some updated text"
      assert info.votes_in_favor == 43
    end

    test "update_info/2 with invalid data returns error changeset" do
      info = info_fixture()
      assert {:error, %Ecto.Changeset{}} = Dare.update_info(info, @invalid_attrs)
      assert info == Dare.get_info!(info.id)
    end

    test "delete_info/1 deletes the info" do
      info = info_fixture()
      assert {:ok, %Info{}} = Dare.delete_info(info)
      assert_raise Ecto.NoResultsError, fn -> Dare.get_info!(info.id) end
    end

    test "change_info/1 returns a info changeset" do
      info = info_fixture()
      assert %Ecto.Changeset{} = Dare.change_info(info)
    end
  end
end
