cask "tokeneater" do
  version "5.13.0"
  sha256 "d9b92ff3d54ad771d29cb8ab9bd08c8fa275543eb6cd4cabb162913efde101f6"

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

