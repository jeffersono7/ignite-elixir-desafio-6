defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  alias Exmeal.Meal

  def render("create.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories,
          user_id: user_id
        }
      }) do
    %{
      meals: %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories,
          user_id: user_id
        }
      },
      message: "Meal created!"
    }
  end

  def render("meal.json", %{
        meal: %Meal{
          id: id,
          description: description,
          date: date,
          calories: calories,
          user_id: user_id
        }
      }) do
    %{
      meal: %Meal{
        id: id,
        description: description,
        date: date,
        calories: calories,
        user_id: user_id
      }
    }
  end
end
