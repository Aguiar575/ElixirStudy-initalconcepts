# to write ~ in mac: sift + ` + space
# alternative syntax to work with literals

charListWithInterpolation = ~c/2 + 7 = #{2 + 7}/
charListWithOutInterpolation = ~C/2 + 7 = #{2 + 7}/

stringWithInterpolation = ~s/test #{String.downcase "TEST"}}/
stringWithOutInterpolation = ~S/test #{String.downcase "TEST"}/

listOfWords = ~w/test test test/

# creating sigils 
defmodule Sigil do
  def sigil_u(string, []), do: String.upcase(string)
end