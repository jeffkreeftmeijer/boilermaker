defmodule BoilermakerTest do
  use ExUnit.Case
  doctest Boilermaker

  test "greets the world" do
    assert Boilermaker.hello() == :world
  end
end
