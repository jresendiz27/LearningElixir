defmodule Elixir99Test do
  use ExUnit.Case
  doctest Elixir99

  test "Find the last box of a list" do
    assert LastOfList.last([1, 2, 3]) == 3  
    assert LastOfList.last([1]) == 1
    assert LastOfList.last([]) == nil
  end

  test "Find the last but one box of a list" do
  	assert LastButOne.lastButOne([1, 2, 3]) == [2, 3]

  end
end
