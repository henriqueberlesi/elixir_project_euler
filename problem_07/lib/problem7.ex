defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?

  ## Examples

      iex> Number.find_nth_prime(6)
      13

  """
  def find_nth_prime(n) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.filter(&is_prime?/1)
    |> Enum.at(n - 1)
  end

  defp is_prime?(n) when n == 2, do: true

  defp is_prime?(n) do
    Enum.all?(2..sqrt(n), fn x -> rem(n, x) != 0 end)
  end

  defp sqrt(n) do
    round(:math.sqrt(n))
  end
end
