defmodule OpenTokIntegration.PageController do
  use OpenTokIntegration.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
