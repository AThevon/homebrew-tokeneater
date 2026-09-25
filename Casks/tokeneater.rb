cask "tokeneater" do
  version "6.0.0"
  sha256 "298bbe94beef793fb96bdc531ed3924fa43363c7c06e72d578bd00ab5da3f7dc"

  url "https://github.com/AThevon/TokenEater/releases/download/v#{version}/TokenEater.dmg"
  name "TokenEater"
  desc "Monitor your Claude AI usage limits from macOS desktop"
  homepage "https://github.com/AThevon/TokenEater"

  auto_updates true
  depends_on macos: :sonoma

  app "TokenEater.app"

  zap trash: [
    "~/Library/Application Support/com.tokeneater.shared",
    "~/Library/Application Support/com.claudeusagewidget.shared",
    "~/Library/Group Containers/S7B8M9JYF4.group.com.tokeneater",
    "~/Library/Preferences/com.tokeneater.app.plist",
    "~/Library/Preferences/com.tokeneater.app.widget.plist",
    "~/Library/Containers/com.tokeneater.app",
    "~/Library/Containers/com.tokeneater.app.widget",
    "~/Library/Containers/com.claudeusagewidget.app",
    "~/Library/Containers/com.claudeusagewidget.app.widget",
    "~/Library/Containers/com.claudeusagewidget.widget",
  ]
end

