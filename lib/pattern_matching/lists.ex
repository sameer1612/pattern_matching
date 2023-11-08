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
  def is_empty?(_list), do: false

  def has_1_item?([_]), do: true
  def has_1_item?(_list), do: false

  def at_least_one?([_ | _rest]), do: true
  def at_least_one?(_list), do: false

  def return_first_item([head | _rest]), do: head
  def return_first_item(_list), do: :error

  def starts_with_1?([1 | _rest]), do: true
  def starts_with_1?(_list), do: false

  def sum_pair([first, second]), do: first + second
  def sum_pair(_list), do: :error

  def sum_first_2([first, second | rest]), do: [first + second | rest]
  def sum_first_2(list), do: list
end
