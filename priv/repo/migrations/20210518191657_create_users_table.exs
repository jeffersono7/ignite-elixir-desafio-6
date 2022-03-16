defmodule Exmeal.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :name, :string, not_null: true
      add :cpf, :string, not_null: true
      add :email, :string, not_null: true

      timestamps()
    end
  end
end
