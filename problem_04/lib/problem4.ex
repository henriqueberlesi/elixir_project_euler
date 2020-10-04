defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.

  ## Examples

      iex> Number.find_biggest_palindrome_with_factor(2)
      9009

  """
  def find_biggest_palindrome_with_factor(n) do
    {min, max} = set_limits(n)

    range(min, max)
    |> Enum.map(fn {x, y} -> x * y end)
    |> Enum.filter(&palindrome?/1)
    |> Enum.max()
  end

  defp set_limits(n) do
    max = (:math.pow(10, n) - 1) |> round()
    min = :math.pow(10, n - 1) |> round()
    {min, max}
  end

  defp range(min, max) do
    Enum.flat_map(max..min, fn x -> for n <- max..min, do: {x, n} end)
  end

  defp palindrome?(n) do
    n == reverse(n)
  end

  defp reverse(n) do
    Integer.to_string(n)
    |> String.reverse()
    |> String.to_integer()
  end
end
