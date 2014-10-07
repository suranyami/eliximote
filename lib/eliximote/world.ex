defmodule Eliximote.World do
  use GenServer

  def start_link(_options) do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(_options) do
    {:ok, []}
  end

  def create_player do
    %Eliximote.Player{x: 0, y: 0, color: "#888888"}
  end

  def move_to(player, x, y) do
    %Eliximote.Player{x: x, y: y, color: player.color}
  end

  def handle_message(server, message) do
    GenServer.cast(server, {:handle_message, message})
  end

  def handle_cast({:handle_message, message}, state) do
    extract_links(message)
    |> Enum.map(fn link ->
      Agent.update(:collector, &([link|&1]))
    end)
    {:noreply, state}
  end

end
