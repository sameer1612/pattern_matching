# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.GuardClauses do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """
  alias PatternMatching.User

  def return_numbers(value) when is_number(value), do: value
  def return_numbers(_value), do: :error

  def return_lists(value) when is_list(value), do: value
  def return_lists(_value), do: :error

  def return_any_size_tuples(value) when is_tuple(value), do: value
  def return_any_size_tuples(_value), do: :error

  # Maps support an alternative version where this pattern match says "It's a
  # map, but with no specific keys." Using this or a guard clause are equally
  # valid.
  #
  # def return_maps(%{} = value), do: value
  def return_maps(value) when is_map(value), do: value
  def return_maps(_value), do: :error

  def run_function(fun) when is_function(fun), do: fun.()
  def run_function(_fun), do: :error

  @adult_age 18

  defguard is_adult?(age) when age >= @adult_age
  defguard is_minor?(age) when age >= 0 and age < @adult_age

  def classify_user(%User{age: age} = _user) when is_nil(age) do
    {:error, "Age missing"}
  end
  # This version is better for matching nil. It is more explicit.
  # However we are currently focusing on guard clauses.
  # def classify_user(%User{age: nil} = _user) do
  #   {:error, "Age missing"}
  # end

  def classify_user(%User{age: age} = _user) when is_adult?(age) do
    {:ok, :adult}
  end
  # def classify_user(%User{age: age} = _user) when age >= @adult_age do
  #   {:ok, :adult}
  # end

  def classify_user(%User{age: age} = _user) when is_minor?(age) do
    {:ok, :minor}
  end
  # def classify_user(%User{age: age} = _user) when age >= 0 and age < @adult_age do
  #   {:ok, :minor}
  # end

  def classify_user(%User{age: age} = _user) when age < 0 do
    {:error, "Age cannot be negative"}
  end

  def classify_user(_user) do
    {:error, "Not a user"}
  end

  def award_child_points(%User{age: user_age} = user, max_age, points) when user_age <= max_age do
    %User{user | points: user.points + points}
  end

  def award_child_points(user, _max_age, _points) do
    user
  end

end
