# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Lists do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def is_empty?([]), do: true
  def is_empty?(_), do: false

  def has_1_item?([_]), do: true
  def has_1_item?(_), do: false

  def at_least_one?([_ | _]), do: true
  def at_least_one?(_), do: false

  def return_first_item([head | _]), do: head
  def return_first_item(_), do: :error

  def starts_with_1?([1 | _]), do: true
  def starts_with_1?(_), do: false

  def sum_pair([x, y]), do: x + y
  def sum_pair(_), do: :error

  def sum_first_2([x, y | z]), do: [x + y | z]
  def sum_first_2(list), do: list
end
