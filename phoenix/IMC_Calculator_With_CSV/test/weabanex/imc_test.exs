defmodule Weabanex.IMCTest do
  use ExUnit.Case, async: true

  alias Weabanex.IMC

  describe "calculate/1" do
    test "when file exists, return the data." do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      expected_response = {:ok, %{"Arthur" => 27.343749999999996, "Giulia" => 21.258503401360546}}

      assert expected_response == response
    end

    test "when file not exists, return an error message" do
      params = %{"filename" => "not_exists.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Error while opening file."}

      assert expected_response == response
    end
  end
end
