defmodule Di.Channels do
  import Di.API
  alias Di.Model.Channel

  def by_id(channel_id) when is_integer(channel_id) do
    get("/channels/#{channel_id}")
    |> handle_response(%Channel{})
  end

  def all do
    get("/channels")
    |> handle_response([%Channel{}])
  end
end