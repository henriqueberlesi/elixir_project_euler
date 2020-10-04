defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "greatest_of_n_adjacents/1" do
    test "finds the 4 adjacent digits in the 1000-digit number that have the greatest product." do
      assert Number.greatest_of_n_adjacents(4) == 5832
    end

    test "finds the 13 adjacent digits in the 1000-digit number that have the greatest product." do
      assert Number.greatest_of_n_adjacents(13) == 23_514_624_000
    end
  end
end
