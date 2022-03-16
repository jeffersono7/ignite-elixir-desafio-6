defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:description, :date, :calories, :user_id]

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @derive {Jason.Encoder, only: [:id, :description, :calories, :date, :user_id]}

  schema "meals" do
    field(:description, :string)
    field(:date, :date)
    field(:calories, :integer)

    belongs_to :user, Exmeal.User

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end
