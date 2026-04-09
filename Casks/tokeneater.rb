cask "tokeneater" do
  version "4.9.1"
  sha256 "ae3de2a57562303fbaa73c6bb8933b46b646ae07a80d35a5195299c244b70bb5"

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

