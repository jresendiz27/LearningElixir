defmodule WebSocketSample.PageController do
  use WebSocketSample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
