defmodule Exmeal.Users.Create do
  alias Ecto.Changeset
  alias Exmeal.{Error, Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> insert()
  end

  defp insert(%Changeset{valid?: false} = changeset) do
    {:error, Error.build(:bad_request, changeset)}
  end

  defp insert(changeset) do
    Repo.insert(changeset)
  end
end
