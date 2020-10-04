defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  describe "find_biggest_palindrome_with_factor/1" do
    test "find biggest palindrome with 2 digits factor" do
      assert Number.find_biggest_palindrome_with_factor(2) == 9009
    end

    test "find biggest palindrome with 3 digits factor" do
      assert Number.find_biggest_palindrome_with_factor(3) == 906_609
    end
  end
end
