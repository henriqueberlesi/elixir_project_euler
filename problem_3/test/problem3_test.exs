defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "find_largest_prime_factor/1" do
    test "largest prime factor of 600851475143" do
      assert Number.find_largest_prime_factor(600_851_475_143) == 6857
    end
  end
end
