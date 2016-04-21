defmodule Asdf do
  def do_math({ :sum, a, b }) do
    a + b
  end

  def do_math({ :minus, a, b }) do
    a - b
  end

  def do_math({ :times, a, b }) do
    a * b
  end

  def do_math({ :division, a, b }) when b != 0 do
    a / b
  end
end
