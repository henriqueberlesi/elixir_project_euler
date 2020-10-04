defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  ## Examples

      iex> Number.sum_of_multiples_3_and_5(10)
      23

  """

  def sum_of_multiples_3_and_5(n) do
    filter(n) |> Enum.sum()
  end

  defp filter(n) do
    Enum.filter(1..(n - 1), &multiple_of_3_or_5/1)
  end

  defp multiple_of_3_or_5(n) do
    rem(n, 3) == 0 or rem(n, 5) == 0
  end
end
