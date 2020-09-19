cask "account-switcher" do
  version "0.0.5"
  sha256 "89d0a5bdcd00532cbbaafd5de6b33d41586dce2c71650ee8531bc64f6f1418c0"

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
