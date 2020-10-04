defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?

  ## Examples

      iex> Number.find_largest_prime_factor(600851475143)
      6857

  """
  def find_largest_prime_factor(n) do
    Stream.iterate(1, &(&1 + 1))
    |> Stream.filter(&is_prime?/1)
    |> Enum.take_while(&(&1 <= sqrt(n)))
    |> find_factor(n)
    |> List.last()
  end

  defp is_prime?(n) do
    Enum.all?(2..sqrt(n), fn x -> rem(n, x) != 0 end)
  end

  defp sqrt(n) do
    round(:math.sqrt(n))
  end

  defp find_factor(enum, n) do
    Enum.filter(enum, fn x -> rem(n, x) == 0 end)
  end
end
