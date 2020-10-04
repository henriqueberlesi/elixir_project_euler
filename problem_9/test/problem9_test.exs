defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "find_product/1" do
    test "finds the the product of each element on a Pythagorean triplet where a + b + c = 1000" do
      assert Number.find_product(1000) == 31_875_000
    end
  end
end
