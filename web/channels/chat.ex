require IEx

defmodule Eliximote.Chat do
  use Phoenix.Channel

  def join(socket, "chat", _message) do
    IO.puts "JOIN #{socket.channel}:#{socket.topic}"
    reply socket, "join", %{status: "connected"}
    {:ok, socket}
  end


  def join(socket, _private_topic, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "move_to", message) do
    IO.puts message["text"]
    broadcast "world", "move_to", "message", message
    socket
  end
end
