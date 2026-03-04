cask "tokeneater" do
  version "4.6.0"
  sha256 "d090513d8f77535a04ea0ac2db736fcee50ff7c7f76facbf21e9e31bad67a6bd"

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
