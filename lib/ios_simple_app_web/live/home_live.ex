defmodule IosSimpleAppWeb.HomeLive do
    use IosSimpleAppWeb, :live_view
    use IosSimpleAppNative, :live_view

    @impl true
    def mount(_params, _session, socket) do
        {:ok, assign(socket, :counter, 0)}
    end

    @impl true
    def render(assigns) do
      ~H"""
      <div class="text-center text-9xl">
        <%= @counter %>
      </div>
      <div class="flex flex-col items-center">
        <button class="px-4 py-1 text-2xl font-bold text-white bg-blue-500 rounded hover:bg-blue-700" phx-click="increment">
            +
        </button>
      </div>
      """
    end

    @impl true
    def handle_event("increment", _params, socket) do
        {:noreply, assign(socket, :counter, socket.assigns.counter + 1)}
    end

    @impl true
    def handle_event("decrement", _params, socket) do
        {:noreply, assign(socket, :counter, socket.assigns.counter - 1)}
    end

    @impl true
    def handle_event("increment-by", %{"by" => value}, socket) do
        {value, _} = Integer.parse(value)
        {:noreply, assign(socket, :counter, socket.assigns.counter + value)}
    end

end
