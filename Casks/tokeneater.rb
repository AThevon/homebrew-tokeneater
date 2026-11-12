cask "tokeneater" do
  version "6.1.1"
  sha256 "223f7790cddc7b1e5c2682cc5711699a775fd99300dbd28ad8edcace8f971eae"

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

