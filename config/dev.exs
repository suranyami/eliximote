use Mix.Config

config :phoenix, Eliximote.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  code_reload: true,
  cookies: true,
  consider_all_requests_local: true,
  session_key: "_eliximote_key",
  session_secret: "O@0V3K(DI417J3!V+ZZM2ONZ*E19C125+5V13(Q$B51=FJKXG%UYZ)FBE%HWZM9O1(V3GTQSGIL"

config :phoenix, :logger,
  level: :debug


