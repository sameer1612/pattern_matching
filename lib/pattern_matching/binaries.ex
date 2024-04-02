# ---
# Excerpted from "Thinking Elixir - PatternMatching", published by Mark Ericksen.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact me if you are in doubt. I make
# no guarantees that this code is fit for any purpose. Visit
# https://thinkingelixir.com/available-courses/pattern-matching/ for course
# information.
# ---
defmodule PatternMatching.Binaries do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def identify_command(value) do
    case value do
      "SAY Hey guys!" -> {:say, "Hey guys!"}
      "WAVE friend_user" -> {:wave, "friend_user"}
      "MOCK other_person Boo!" -> {:error, "Unrecognized command"}
    end
  end

  def format_phone(value) do
    case value do
      "8005554444" -> "(800) 555-4444"
      "5554444" -> "555-4444"
      "short" -> "short"
      "original" -> "original"
      nil -> nil
    end
  end

  @png_signature <<137::size(8), 80::size(8), 78::size(8), 71::size(8), 13::size(8), 10::size(8),
                   26::size(8), 10::size(8)>>
  @jpg_signature <<255::size(8), 216::size(8)>>

  def image_type(value) do
    case value do
      @png_signature <> _ -> :png
      @jpg_signature <> _ -> :jpg
      _ -> :unknown
    end
  end
end
