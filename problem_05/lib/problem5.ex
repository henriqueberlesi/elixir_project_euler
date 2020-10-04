defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  ## Examples

      iex> Number.smallest_evenly_divisible_by_range(1, 10)
      2520

  """
  def smallest_evenly_divisible_by_range(min, max) do
    Stream.iterate(max, &(&1 + max))
    |> Enum.find(fn x -> divisible_by_range(x, min..max) end)
  end

  defp divisible_by_range(n, range) do
    Enum.all?(range, fn x -> rem(n, x) == 0 end)
  end
end
