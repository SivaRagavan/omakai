defmodule ExlangTest do
  use ExUnit.Case
  doctest Exlang

  test "greets the world" do
    assert Exlang.hello() == :world
  end
end
