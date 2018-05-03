defmodule Boilermaker do
  @moduledoc """
  Documentation for Boilermaker.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Boilermaker.hello
      :world

  """
  def hello do
    :world
  end

  def start(_, _) do
    IO.puts "Hello from Boilermaker!"
    {:ok, self()}
  end
end
