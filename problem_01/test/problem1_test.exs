defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "sum_of_multiples_3_and_5/1" do
    test "sum multiples below 10" do
      assert Number.sum_of_multiples_3_and_5(10) == 23
    end

    test "sum multiples below 1000" do
      assert Number.sum_of_multiples_3_and_5(1000) == 233_168
    end
  end
end
