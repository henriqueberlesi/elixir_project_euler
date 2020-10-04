defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "sum_of_primes_below/1" do
    test "finds the sum of primes below 10" do
      assert Number.sum_of_primes_below(10) == 17
    end

    test "finds the sum of primes below 2000000" do
      assert Number.sum_of_primes_below(2_000_000) == 142_913_828_922
    end
  end
end
