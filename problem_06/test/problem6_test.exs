defmodule Problem6Test do
  use ExUnit.Case
  doctest Number

  describe "square_of_sums_minus_sum_of_squares/2" do
    test "finds the difference between square of sums and sum of squares from range 1..10" do
      assert Number.square_of_sums_minus_sum_of_squares(1, 10) == 2640
    end

    test "finds the difference between square of sums and sum of squares from range 1..100" do
      assert Number.square_of_sums_minus_sum_of_squares(1, 100) == 2640
    end
  end
end
