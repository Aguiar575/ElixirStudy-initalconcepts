# if padrao como das outras linguagens
if String.valid?("Hello") do
  "String valid"
else
  "string not valid"
end

# unless se assemelha ao if porem para o modo nagativo 
unless is_integer("Hello") do
  "is not a integer"
end

# basicamente um if com muitos padrões
case {1, 2, 3} do
  {4, 5, 6} ->
    "não vai dar match"
  {1, x, 3} ->
    "vai dar match pq vai fazer bind do x para 2"
    # o x se torna similar a um valor dinamico
    _ ->
    "não deu match com nada"
    # similar com o default do switch case
end

# usar  o operador pin para comparar case
# com variavel existente
x = 1
case 10 do
  ^x -> "match com 1"
  _ -> "sem match"
end

# eh possivel usar condicoes extras
# dentro do case "when"
case {1, 2, 3} do
  {1, x, 3} when x > 1 ->
    "valor central maior que 1"
   _ -> "sem match"
end

# cond eh um elsif de associacao de condicoes
# baseia-se em condicoes booleanas 
cond  do
  2 + 2 == 5 -> "não vai ser true"
  2 - 2 == 3 -> "não vai ser true"
  1 + 1 == 2 -> "vai ser true"
end

# true assemelha-se ao else do if
cond do
  1 + 2 == 4 -> "false"
  1 + 1 == 5 -> "false"
  true -> "true"
end

# with é composta de key-words, generator e expressoes
user = %{first: "sean", last: "callan"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first
end




