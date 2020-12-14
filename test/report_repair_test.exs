defmodule ReportRepairTest do
  use ExUnit.Case
  doctest ReportRepair

  test "reports the product correctly" do
    assert ReportRepair.result([1721, 979, 366, 299, 675, 1456]) == 514_579
  end
end
