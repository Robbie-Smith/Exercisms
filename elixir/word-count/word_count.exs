defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    x = String.split(sentence , " ")
    y = Enum.count(x)
    IO.puts(y)
  end
end
