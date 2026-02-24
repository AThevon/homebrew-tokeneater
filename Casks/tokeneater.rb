cask "tokeneater" do
  version "4.2.5"
  sha256 "e1c4288cbd2f4cd8f8b4c78e9439726deffb906e807a954d5f46c58344940d4e"

  url "https://github.com/AThevon/TokenEater/releases/download/v#{version}/TokenEater.dmg"
  name "TokenEater"
  desc "Monitor your Claude AI usage limits from macOS desktop"
  homepage "https://github.com/AThevon/TokenEater"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "TokenEater.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TokenEater.app"]
  end

  zap trash: [
    "~/Library/Containers/com.claudeusagewidget.widget",
  ]
end
