defmodule Exmeal.Users.Delete do
  alias Exmeal.{Repo, User, Users}
  alias Users.Get

  def call(id) do
    with {:ok, %User{} = user} <- Get.by_id(id) do
      Repo.delete(user)
    end
  end
end
