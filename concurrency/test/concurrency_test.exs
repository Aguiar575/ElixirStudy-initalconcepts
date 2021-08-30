defmodule ConcurrencyTest do
  use ExUnit.Case
  doctest Concurrency


  test "greets the world" do
    assert Concurrency.add(1, 1) == 2
  end
end
