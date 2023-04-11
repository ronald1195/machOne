defmodule MachOneWeb.Schema do
  use Absinthe.Schema

  @desc "A Dare"
    object :dare do
      field :text, :string
      field :votes_in_favor, :integer
    end

    # Example data
    @dare_information %{
      "dare1" => %{id: 1, text: "Comer caca", votes_in_favor: 0},
      "dare2" => %{id: 2, text: "Pegarle a tu mama", votes_in_favor: 0},
      "dare3" => %{id: 3, text: "Pegarle a un cachorrito", votes_in_favor: 0}
    }

    query do
      field :dare_info, :dare do
        arg :id, non_null(:id)
        resolve fn %{id: dare_id}, _ ->
          {:ok, @dare_information[dare_id]}
        end
      end
  end
end
