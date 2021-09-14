defmodule WeabanexWeb.IMCControllerTest do
  use WeabanexWeb.ConnCase, async: true

  describe "index/2" do
    test "when all params are valid, return json data.", %{conn: conn} do
      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      expected_response = %{"Arthur" => 27.343749999999996, "Giulia" => 21.258503401360546}

      assert expected_response == response
    end

    test "Return error when params are invalid", %{conn: conn} do
      params = %{"filename" => "non_exist.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:bad_request)

      expected_response = "Error while opening file."

      assert expected_response == response
    end
  end
end
