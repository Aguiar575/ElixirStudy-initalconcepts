defmodule Metaprogramming do
  defmacro if_banana(value, do: code) do
    quote do
      if "banana" == unquote(value), do: unquote(code)
    end
  end
end
