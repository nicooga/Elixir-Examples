defmodule PoorMansRedis do
  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      { :get, key, caller_pid } ->
        send caller_pid, Map.get(map, key)
        loop map
      { :put, key, value } ->
        loop Map.put(map, key, value)
    end
  end
end

defmodule SmartMansRedis do
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  def put(pid, key, value) do
    Agent.update(pid, fn(map) ->
      Map.put(map, key, value)
    end)
  end

  def get(pid, key) do
    Agent.get(pid, fn(map) ->
      Map.get(map, key)
    end)
  end
end
