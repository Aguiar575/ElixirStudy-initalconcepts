if String.valid?("Hello") do
  "String valid"
else
  "string not valid"
end

unless is_integer("Hello") do
  "is not a integer"
end

case {1, 2, 3} do
  {4, 5, 6} ->
    "não vai dar match"
  {1, x, 3} ->
    "vai dar match pq vai fazer bind do x para 2"
    _ ->
    "não deu match com nada"
end

x = 1
case 10 do
  ^x -> "match com 1"
  _ -> "sem match"
end

case {1, 2, 3} do
  {1, x, 3} when x > 1 ->
    "valor central maior que 1"
   _ -> "sem match"
end

cond  do
  2 + 2 == 5 -> "não vai ser true"
  2 - 2 == 3 -> "não vai ser true"
  1 + 1 == 2 -> "vai ser true"
end

cond do
  1 + 2 == 4 -> "false"
  1 + 1 == 5 -> "false"
  true -> "true"
end

user = %{first: "sean", last: "callan"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first
end
