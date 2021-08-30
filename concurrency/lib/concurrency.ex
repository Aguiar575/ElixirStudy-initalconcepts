defmodule Concurrency do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen()
  end

  def explode, do: exit(:kaboom)
end
