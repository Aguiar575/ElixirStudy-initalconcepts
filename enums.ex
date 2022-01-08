lista = ["foo", "bar", "hello"]

Enum.all?(lista, fn(s) -> String.length(s) == 3 end)
# return false

Enum.all?(lista, fn(s) -> String.lenght(s) > 1 end)
# return true


Enum.any?(lista, fn(s) -> String.lenght(s) == 5 end)
# return true

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
Enum.chunk_every(lista, 2)

Enum.chunk_by(lista, fn(s) -> String.length(s) end)

numero = [1, 2, 3, 4, 5, 6,7, 8, 9]

Enum.map_every(numero, 3, fn(x) -> x + 100 end)

Enum.each(numero, fn(x) -> IO.puts(x) end)

Enum.map(numero, fn(x) -> x - 1 end)

Enum.min(numero)

Enum.max(numero)

Enum.filter(numero, fn(x) -> rem(x, 2) == 0 end)

Enum.reduce(numero, fn(x, acc) -> x + acc end)

Enum.reduce(nuemro, 10, fn(x, acc) -> x + acc end)

Enum.sort(numero)

Enum.uniq(numero)

tuple_list = [a: {:tea, 2}, b: {:tea, 2}, c: {:coffe, 1}]
Enum.uniq_by(tuple_list, fn {_, y} -> y end)

Enum.map(numero, &(&1 + 3))

plus_three = &(&1 + 3)
Enum.map(numero, plus_three)

defmodule Adding do
  def plus_three(number), do: number + 3
end

Enum.map(numero, fn number -> Adding.plus_three(number) end)

Enum.map(numero, $Adding.plus_three(&1))
