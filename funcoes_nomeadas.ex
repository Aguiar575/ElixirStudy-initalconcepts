# funcoes sao definidas como def
# dentro de um modulo

defmodule Greeter do
  def hello(name), do: "Hello, " <> name
end

# chamando a funcao
Greeter.hello("arthur")

# funcoes em elixir aguentam sobrecarga
# de acordo com a aridade da funcao
defmodule Helololo do
  def hello, do: "helo!"
  def hello(nome), do: "helolo, " <> nome
  def hello(nome, nome2), do: "helololo, #{nome} e #{nome2}"
end

# funcoes fazem pattern matching com os argumentos
# que sao chamados

# por exemplo, recebendo um mapa, porem
# trabalhando com uma unica chave na funcao
defmodule UsaMapa do
  def hello(%{nome: nome}) do
    IO.puts "Hello, " <> nome
  end
end

# usando a funcao
mapa = %{nome: "gato",
         raca: "cachorro",
         idade: "300"}

UsaMapa.hello(mapa)

# funcoes privadas
defmodule Greeting  do
  def hello(name), do: phrase <> name
  defp phrase, do: "Hello, "
end

# guards dentro de funcoes
# IMPORTANTE: |> passa a valor para a funcao subsequente

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

# \\ define valor default para a variavel da funcao
defmodule Math do
  def soma(a \\ 2, b) do
    a + b
  end
end

# chamando a funcao
Math.soma(9)
# ou
Math.soma(1, 9)



