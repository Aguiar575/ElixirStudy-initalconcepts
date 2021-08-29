defmodule ExecFileTest do
  use ExUnit.Case
  doctest ExecFile

  test "greets the world" do
    assert ExecFile.hello() == :world
  end
end
