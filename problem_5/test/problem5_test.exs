defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "smallest_evenly_divisible_by_range/2" do
    test "smallest number evenly divisible by range 1..10" do
      assert Number.smallest_evenly_divisible_by_range(1, 10) == 2520
    end

    test "smallest number evenly divisible by range 1..20" do
      assert Number.smallest_evenly_divisible_by_range(1, 20) == 232_792_560
    end
  end
end
