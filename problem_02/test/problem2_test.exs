defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "sum_of_evens_fibonacci/1" do
    test "finds the sum of Fibonacci's numbers that does not exceed 4 million" do
      assert Number.sum_of_evens_fibonacci(4_000_000) == 4_613_732
    end
  end
end
