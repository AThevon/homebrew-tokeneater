cask "tokeneater" do
  version "4.2.0"
  sha256 "671c0211a7f020420f1a786b7246185572e7a7effdff6f69e0d6d68f3055d3e3"

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
