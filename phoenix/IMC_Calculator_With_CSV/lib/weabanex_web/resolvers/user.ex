defmodule WeabanexWeb.Resolvers.User do
  alias Weabanex.Users.Get, as: GetUser
  alias Weabanex.Users.Create, as: CreateUser

  def get(%{id: user_id}, _context), do: GetUser.call(user_id)
  def create(%{input: args}, _content), do: CreateUser.call(args)
end
