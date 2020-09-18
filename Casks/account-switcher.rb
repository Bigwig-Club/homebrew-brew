cask "account-switcher" do
  version "0.0.1"
  sha256 "db1c25873222976eb891dff9944840d5b4bbebce9ca799043df867b86fe47372"

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
