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
  def return_numbers(_), do: :error

  def return_lists(value) when is_list(value), do: value
  def return_lists(_), do: :error

  def return_any_size_tuples(value) when is_tuple(value), do: value
  def return_any_size_tuples(_), do: :error

  def return_maps(value) when is_map(value), do: value
  def return_maps(_), do: :error

  def run_function(value) when is_function(value), do: value.()
  def run_function(_), do: :error

  def classify_user(%User{age: nil} = _user), do: {:error, "Age missing"}
  def classify_user(user) when user.age < 0, do: {:error, "Age cannot be negative"}
  def classify_user(user) when user.age < 18, do: {:ok, :minor}
  def classify_user(user) when user.age >= 18, do: {:ok, :adult}
  def classify_user(_), do: {:error, "Not a user"}

  def award_child_points(user, max_age, points) when user.age <= max_age do
    %{user | points: user.points + points}
  end

  def award_child_points(user, _max_age, _points), do: user
end
