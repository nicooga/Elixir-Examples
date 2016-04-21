defmodule Recursion do
  def info([head | tail]) do
    IO.puts ~s(
      This is the head: #{inspect(head)}.
      This is the tail #{inspect(tail)}"
    )
  end

  def info([]), do: IO.puts "This list is empty"

  def double([head | tail]), do: [head * 2 | double(tail)]
  def double([]), do: []

  def map([head | tail], func), do: [func.(head) | map(tail, func)]
  def map([], _func), do: []

  def sum_list([head | tail], acc), do: sum_list(tail, acc + head)
  def sum_list([], acc), do: acc

  def reduce([head | tail], acc, func) do
    reduce tail, func.(acc, head), func
  end

  def reduce([], acc, func), do: []
end
