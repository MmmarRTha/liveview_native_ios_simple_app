defmodule IosSimpleAppWeb.HomeLive.SwiftUI do
  use IosSimpleAppNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    VStack {
      Text("Home, Hello World SwiftUI")
      Button("Increment") {
        self.send_event("increment")
      }
    }
    """
  end
end
