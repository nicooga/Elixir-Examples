defmodule Doge do
  defstruct very: "handsome", so: "dynamic"

  def walk(doge, time) when time >= 8 and time <= 19 do
    IO.puts "- Fuck off doge, I'm busy"
  end

  def walk(%Doge{ very: "handsome" }, time \\ nil) do
    IO.puts "- Walking this handsome dog"
  end

  def walk(%Doge{ very: "ugly" }, time \\ nil) do
    IO.puts "- Walking this ugly dog"
  end

  def walk(doge, time \\ nil) do
    IO.puts "- Walking this unkown doge"
  end
end

defmodule Test do
  def perform do
    Doge.walk(%Doge{ very: "handsome" })
    Doge.walk(%Doge{ very: "ugly" })
    Doge.walk(%Doge{ very: "meh" })
    Doge.walk(%Doge{ very: "meh" }, 10)
    Doge.walk(%Doge{ very: "meh" }, 22)
  end
end
