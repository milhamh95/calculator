defmodule Calculator do
  alias Calculator.Boundary

  def start(initial_state) do
    Boundary.start(initial_state)
  end

  def state(calculator) do
    send(calculator, {:state, self()})
    receive do
      {:state, state} ->
        state
    after
        5000 ->
          {:error, :timeout}
    end
  end

  def add(calculator, n), do: send(calculator, {:add, n})
  def substract(calculator, n), do: send(calculator, {:substract, n})
  def multiply(calculator, n), do: send(calculator, {:multiply, n})
  def divide(calculator, n), do: send(calculator, {:divide, n})
  def clear(calculator), do: send(calculator, :clear)

end
