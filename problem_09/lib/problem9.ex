defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a2 + b2 = c2
  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.

  ## Examples

      iex> Number.find_product(1000)
      31875000

  """
  def find_product(n) do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.take_while(fn x -> x < n end)
    |> create_tuples()
    |> Enum.filter(&validates_a_and_b(&1, n))
    |> Enum.map(&append_c/1)
    |> Enum.filter(&is_pythagorean?/1)
    |> Enum.at(0)
    |> product()
  end

  defp product({a, b, c}) do
    a * b * c
  end

  defp create_tuples(range) do
    Enum.flat_map(range, fn x -> for n <- range, do: {x, n} end)
  end

  # obrigado, carol <3
  defp validates_a_and_b({a, b}, n) do
    a + b + :math.sqrt(a * a + b * b) == n
  end

  defp append_c({a, b}) do
    c = :math.sqrt(a * a + b * b) |> round()
    {a, b, c}
  end

  defp is_pythagorean?({a, b, c}) do
    a * a + b * b == c * c and a < b and b < c
  end
end
