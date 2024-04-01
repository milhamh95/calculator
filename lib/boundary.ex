defmodule Calculator.Boundary do
  alias Calculator.Core

  def start(initial_state) do
    spawn(fn -> run(initial_state) end) # <-- init
  end

  def run(state) do
    state
    |> listen
    |> run
  end

  def listen(state) do
    receive do
      # handle cast
      {:add, number} -> Core.add(state, number)
      # handle cast
      {:substract, number} -> Core.substract(state, number)
      # handle cast
      {:multiply, number} -> Core.multiply(state, number)
      # handle cast
      {:divide, number} -> Core.divide(state, number)
      # handle call
      {:state, pid} ->
        send(pid, {:state, state})
        state
    end
  end
end
