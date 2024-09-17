defmodule IosSimpleAppWeb.HomeLive.SwiftUI do
  use IosSimpleAppNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    <Text>Hello iOS from LiveView Native SwiftUI 🤩</Text>
    """
  end
end
