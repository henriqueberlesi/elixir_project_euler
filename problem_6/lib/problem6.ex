defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385.

  The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55^2 = 3025.

  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

  ## Examples

      iex> Number.square_of_sums_minus_sum_of_squares(1, 10)
      2640

  """
  def square_of_sums_minus_sum_of_squares(min, max) do
    square_of_sums(min, max) - sum_of_squares(min, max)
  end

  defp sum_of_squares(min, max) do
    Enum.reduce(min..max, 0, fn x, acc -> :math.pow(x, 2) + acc end)
    |> round()
  end

  defp square_of_sums(min, max) do
    Enum.sum(min..max)
    |> :math.pow(2)
    |> round()
  end
end
