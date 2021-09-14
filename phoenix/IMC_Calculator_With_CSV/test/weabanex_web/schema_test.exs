defmodule WeabanexWeb.SchemaTest do
  use WeabanexWeb.ConnCase, async: true

  alias Weabanex.User
  alias Weabanex.Users

  describe "users query" do
    test "when valid id pass, return user", %{conn: conn} do
      params = %{name: "Arthur", email: "arthur99aguiar@email.com", password: "123456789"}

      {:ok, %User{id: user_id}} = Users.Create.call(params)

      query = """
      {
        getUser(id: "#{user_id}"){
          name
          email
        }
      }
      """

      response =
        conn
        |> post("/api/graphql", %{query: query})
        |> json_response(:ok)

      expected_response = %{
        "data" => %{
          "getUser" => %{
            "email" => "arthur99aguiar@email.com",
            "name" => "Arthur"
          }
        }
      }

      assert response == expected_response
    end
  end
end
