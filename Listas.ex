lista = [3.14, :pie, "Apple"]

# Em erlang as lstas sao encadeadas
# prepend, acao mais rapida 
["Word" | lista]

# append acao mais lenta
lista ++ ["word"]

# eh possivel remover valores que nao existem sem medo
lisa -- [32, "Apple"]

# listas possuem topo e calda
# topo é o primeiro valor da lista
hd lista

# calda sao os valores restantes da lista
tl lista

# tuplas sao similares a listas
# porem armazenadas contiguas na memoria
# o acesso aos valores e mais rapido porem a modificacao
# eh mais custosa

tupla = {3.14, :pie, "Apple"}

# listas de key word
# similates a dicionario
# recebem um atomo com chave
# as chaves sao ordenadas
# as chaves nao sao unicas 
key_word = [foo: "bar", hello: "world"]

# mapas, sao similares a listas porem
# as chaves podem ser de qualquer tipo e nao sao ordenadas
map = %{"hello" => :world, "foo" => :bar}

# é permitido inserir variaveis como chaves de mapa
key = "hello"
%{key => "world"}
# retorna %{"hello" => "world"}
# chaves duplicadas sobescrevem a anterior

# criar mapas apenas com atomos com chave
map2 = %{hello: "world"}   
map2.hello

# usar Map.put() para adicionar novo valor em um map
Map.put(map, :foo, "baz")



