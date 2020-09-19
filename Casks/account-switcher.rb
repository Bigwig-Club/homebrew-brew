cask "account-switcher" do
  version "0.0.3"
  sha256 "0df033494c26f14a7eaebfa2a3c5079e7e1e77fe8274f9117695818a9518dd79"

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
