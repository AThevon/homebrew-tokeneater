cask "tokeneater" do
  version "1.2.0"
  sha256 "6ea7eb3659765edf07a3891d9ece7ffd677d6e99af2eda14afc6f29611c9bc0d"

  url "https://github.com/AThevon/TokenEater/releases/download/v#{version}/TokenEater.dmg"
  name "TokenEater"
  desc "Monitor your Claude AI usage limits from macOS desktop"
  homepage "https://github.com/AThevon/TokenEater"

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
