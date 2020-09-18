cask "account-switcher" do
  version "0.0.2"
  sha256 "e4b4be22a4a4211b910398f06edb723764f6248acfa60cbc0842f0d56476fb8e"

  url "https://github.com/Bigwig-Club/Account-Switcher/releases/download/v#{version}/Account.Switcher.zip"
  appcast "https://github.com/Bigwig-Club/Account-Switcher/releases.atom"
  name "Account Switcher"
  homepage "https://github.com/Bigwig-Club/Account-Switcher"

  depends_on :macos => ">= :catalina"

  app "Account Switcher.app"

  zap :trash => [
    "~/Library/Preferences/com.licardo.Account-Switcher.plist",
    "~/Library/Caches/com.licardo.Account-Switcher",
    "~/Library/Containers/com.licardo.Account-Switcher",
  ]
end
