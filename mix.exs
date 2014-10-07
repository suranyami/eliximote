defmodule Eliximote.Mixfile do
  use Mix.Project

  def project do
    [ app: :eliximote,
      version: "0.0.1",
      elixir: "~> 1.0",
      elixirc_paths: ["lib", "web"],
      escript: escript_config,
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Eliximote, [] },
      applications: [:phoenix, :cowboy]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix,      github: "phoenixframework/phoenix"},
      {:phoenix_haml, "~> 0.0.3"},
      {:cowboy,       "~> 1.0.0"}
    ]
  end

  defp escript_config do
    [main_module: ElixiMote.Launch]
  end
end
