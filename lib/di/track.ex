defmodule Di.Track do

  def get_currently_playing! do
    get!("/track_history")
    |> Map.fetch!(:body)
  end

  def get_currently_playing do
   get("/track_history")
  end

  def get_currently_playing!(channel_id) when is_integer(channel_id) do
    get!("/track_history/channel/#{channel_id}")
    |> Map.fetch!(:body)
  end

  def get_currently_playing(channel_id) when is_integer(channel_id) do
    get("/track_history/channel/#{channel_id}")
  end
end
