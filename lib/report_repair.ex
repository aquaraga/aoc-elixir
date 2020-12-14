defmodule ReportRepair do
  @moduledoc """
  Documentation for `ReportRepair`.
  """

  @spec result(list(integer)) :: integer
  @doc """
  Product of numbers that add up to 2020.

  ## Examples

      iex> ReportRepair.result([1721, 979, 366, 299, 675, 1456])
      514579

  """
  def result(array) do
    tuples = for i <- array, j <- array, do: {i, j}

    tuples
    |> Enum.filter(fn {x, y} -> x + y == 2020 end)
    |> Enum.map(fn {x, y} -> x * y end)
    |> List.first()
  end
end
