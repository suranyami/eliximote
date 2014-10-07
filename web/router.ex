defmodule Eliximote.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :eliximote
  get "/", Eliximote.PageController, :index, as: :page

  use Phoenix.Router.Socket, mount: "/ws"
  channel "chat", Eliximote.Chat
end
