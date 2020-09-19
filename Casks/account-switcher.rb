cask "account-switcher" do
  version "0.0.4"
  sha256 "51082067e4d590abf03ec697b8d52c18882925fe82595453f417c3a8c0611a28"

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
