defmodule Weabanex.UserTest do
  use Weabanex.DataCase, async: true

  alias Weabanex.User

  describe "changeset/1" do
    test "When all fields are valid, return user" do
      params = %{name: "Arthur", email: "arthur99aguiar@bol.com", password: "123456789"}

      response = User.changeset(params)

      assert %Ecto.Changeset{
               valid?: true,
               changes: %{email: "arthur99aguiar@bol.com", name: "Arthur", password: "123456789"},
               errors: []
             } = response
    end

    test "When fields are invalid, return error" do
      params = %{name: "A", email: "arthur99aguiar@bol.com", password: "1"}

      response = User.changeset(params)

      expected_response = %{
        name: ["should be at least 5 character(s)"],
        password: ["should be at least 8 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
