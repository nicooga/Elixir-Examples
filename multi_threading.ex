pid = self

spawn fn ->
  send pid, %{
    pid: self(),
    msg: "Hola polola"
  }
end

receive do
  %{ pid: pid, msg: msg } ->
    IO.puts "Got message \"#{msg}\" from pid #{inspect pid}"
end
