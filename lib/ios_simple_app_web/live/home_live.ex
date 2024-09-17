defmodule IosSimpleAppWeb.HomeLive do
    use IosSimpleAppWeb, :live_view
    use IosSimpleAppNative, :live_view

    def mount(_params, _session, socket) do
        {:ok, assign(socket, :counter, 0)}
    end

    def render(assigns) do
      ~H"""
      <div>
        <h1>Hello World html from Phoenix LiveView </h1>
      </div>
      """
    end

    def handle_event("increment", _params, socket) do
        counter = socket.assigns.counter
        {:noreply, assign(socket, :counter, counter + 1)}
    end
end
