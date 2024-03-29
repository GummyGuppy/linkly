defmodule Linkly.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [

      # This piece of configuration will start the Ecto process which receives
      # and executes our application's queries. Without it, we wouldn't be able to query the
      # database at all!
      Linkly.Repo
      # Starts a worker by calling: Linkly.Worker.start_link(arg)
      # {Linkly.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Linkly.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
