defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "find_nth_prime/1" do
    test "find 6th prime" do
      assert Number.find_nth_prime(6) == 13
    end

    test "find 10001st prime" do
      assert Number.find_nth_prime(10001) == 104_743
    end
  end
end
