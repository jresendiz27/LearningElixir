defmodule WebSocketSample.PageController do
  use WebSocketSample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def sample(conn, _params) do
    case File.read("/home/alberto/Desktop/sample.mp3") do
      {:ok, binary} ->
        mp3_byte_size = (byte_size(binary) - 128)
        << binaryData :: binary-size(mp3_byte_size), id3_tag :: binary >> = binary
        json conn, %{ mp3_byte_size: mp3_byte_size, data: Base.encode64(binaryData) }
    end
  end
end
