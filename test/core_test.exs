defmodule Calculator.CoreTest do
  use ExUnit.Case
  alias Calculator.Core

  test "substracts" do
    assert Core.substract(10,4) == 6
  end

  test "adds" do
    assert Core.add(10,4) == 14
  end

  test "multiplies" do
    assert Core.multiply(10, 4) == 40
  end

  test "divides" do
    assert Core.divide(10, 2) == 5.0
  end

  test "fold" do
    assert Core.fold([1,2,3,4], 0, &Core.add/2) == 10
  end

end
