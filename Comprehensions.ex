import Integer

# Simple comprehension
list = [1, 2, 3, 4, 5]
multuplycells = for x <- list, do: x * x

keyWordList = [one: 1, two: 2, three: 3]
listOfVals = for {_key, val} <- keyWordList, do: val

binariesList = for <<c <- "Hello">>, do: c

specificKeyWord = [ok: "Hello", error: "Unknown", ok: "World"]
listSpecifics = for {:ok, val} <- specificKeyWord, do: val

# Conditions
listCondition = for x <- 1..100, rem(x, 3) == 0, do: x

