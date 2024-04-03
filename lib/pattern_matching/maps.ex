# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Maps do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def return_name(value) do
    value.name
  end

  def has_sides?(%{sides: _}), do: true
  def has_sides?(_), do: false

  def net_change(%{initial_balance: ib, ending_balance: eb}), do: {:ok, eb - ib}
  def net_change(_), do: {:error, "Missing balance information"}

  def classify_response(%{"success" => true}), do: {:ok, "syriuC2ia"}

  def classify_response(%{"success" => false, "account" => %{"status_code" => "3001"}}),
    do: {:error, :frozen}

  def classify_response(%{"success" => false} = value) do
    case value["messages"]["general"]["result_code"] do
      -1 -> {:error, :invalid}
      3 -> {:error, :retry}
    end
  end
end
