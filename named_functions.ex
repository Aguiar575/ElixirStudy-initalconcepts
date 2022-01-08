defmodule Greeter do
  def hello(name), do: "Hello, " <> name
end

Greeter.hello("arthur")

defmodule Helololo do
  def hello, do: "helo!"
  def hello(nome), do: "helolo, " <> nome
  def hello(nome, nome2), do: "helololo, #{nome} e #{nome2}"
end

defmodule UsaMapa do
  def hello(%{nome: nome}) do
    IO.puts "Hello, " <> nome
  end
end

mapa = %{nome: "gato",
         raca: "cachorro",
         idade: "300"}

UsaMapa.hello(mapa)

defmodule Greeting  do
  def hello(name), do: phrase <> name
  defp phrase, do: "Hello, "
end

defmodule ListGreeter  do
  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

defmodule Math do
  def soma(a \\ 2, b) do
    a + b
  end
end

Math.soma(9)
Math.soma(1, 9)
