defmodule Exmeal.Users.Update do
  alias Exmeal.{Repo, User, Users}
  alias Users.Get

  def call(%{"id" => id} = params) do
    with {:ok, %User{} = user} <- Get.by_id(id) do
      User.changeset(user, params)
      |> Repo.update()
    end
  end
end
