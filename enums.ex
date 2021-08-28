# Enum.all?
# all? lambda que retorna um booleano
# avalia todos osss itens da colecao

lista = ["foo", "bar", "hello"]

Enum.all?(lista, fn(s) -> String.length(s) == 3 end)
# return false

Enum.all?(lista, fn(s) -> String.lenght(s) > 1 end)
# return true

# Enum.Any?
# Valida se ao menos um valor se enquadra com a comparcao

Enum.any?(lista, fn(s) -> String.lenght(s) == 5 end)
# return true

# Enum.chunk_every
# quebra a lista em partes de acordo com o enumerador
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
Enum.chunk_every(lista, 2)

# Enum.chunk_by
# quebra a lista cada vez que o enumerador é modificado
Enum.chunk_by(lista, fn(s) -> String.length(s) end)

# Enum.map_every
# recebe uma lista e um salto como parametros
# após definida uma alterado ao lambda, a mesma é alterada
# na mesma frequencia do salto
numero = [1, 2, 3, 4, 5, 6,7, 8, 9]
Enum.map_every(numero, 3, fn(x) -> x + 100 end)

# Enum.each
# foreach do elixir
Enum.each(numero, fn(x) -> IO.puts(x) end)

# Enum.map
# itera sobre os valores da lista alterando os valores
Enum.map(numero, fn(x) -> x - 1 end)

# Enum.min Enum.main retorna menor e maior valor da collection
Enum.min(numero)
Enum.max(numero)

# Enum.filter filtra os elementos retornados com true
# para uma nova collection
Enum.filter(numero, fn(x) -> rem(x, 2) == 0 end)
# rem() == divisao

# Enum.reduce
#reduz os valores de uma colecao em um unico valor
Enum.reduce(numero, fn(x, acc) -> x + acc end)
# é possivel também retornar o valor junto de um
# acumulador
Enum.reduce(nuemro, 10, fn(x, acc) -> x + acc end)

# Enum.sort
# ordena uma lista
Enum.sort(numero)

# Enum.uniq
# retorna apenas os valores que nao se repetem
Enum.uniq(numero)

# Enum.uniq_by
# retorna os valores unicos baseados em uma lista
tuple_list = [a: {:tea, 2}, b: {:tea, 2}, c: {:coffe, 1}]
Enum.uniq_by(tuple_list, fn {_, y} -> y end)

# usando funcoes anonimas
Enum.map(numero, &(&1 + 3))

# podemos passar funcao anonima para uma variavel
# e reotrna-la na chamada da funcao
plus_three = &(&1 + 3)
Enum.map(numero, plus_three)

# usando funcao nomeada
defmodule Adding do
  def plus_three(number), do: number + 3
end

Enum.map(numero, fn number -> Adding.plus_three(number) end)

# usando funcao nominal como funcao anonima em iteracao
Enum.map(numero, $Adding.plus_three(&1))

