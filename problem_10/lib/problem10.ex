defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.

  ## Examples

      iex> Number.sum_of_primes_below(10)
      17

  """
  def sum_of_primes_below(n) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.filter(&is_prime?/1)
    |> Enum.take_while(fn x -> x < n end)
    |> Enum.sum()
  end

  defp is_prime?(n) when n == 2, do: true

  defp is_prime?(n) do
    Enum.all?(2..sqrt(n), fn x -> rem(n, x) != 0 end)
  end

  defp sqrt(n) do
    round(:math.sqrt(n))
  end
end
