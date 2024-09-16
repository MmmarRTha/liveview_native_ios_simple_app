defmodule IosSimpleAppWeb.Layouts.SwiftUI do
  use IosSimpleAppNative, [:layout, format: :swiftui]

  embed_templates "layouts_swiftui/*"
end
