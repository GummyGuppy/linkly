defmodule LinklyTest do
  use ExUnit.Case
  doctest Linkly

  # tests
  test "greets the world" do
    assert Linkly.hello() == :world
  end
end
