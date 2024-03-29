defmodule Calculator.Core do
  def add(acc, number), do: acc + number
  def substract(acc, number), do: acc - number
  def multiply(acc, number), do: acc * number
  def divide(acc, number), do: acc / number

  def inc(acc), do: acc + 1
  def dec(acc), do: acc - 1

  def fold(list, acc, func) do
    Enum.reduce(list, acc, fn item, acc -> func.(acc, item) end)
  end

end
