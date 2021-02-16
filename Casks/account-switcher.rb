# frozen_string_literal: true

cask "account-switcher" do
  if MacOS.version >= :big_sur
    version "1.0.0"
    sha256 "f127a3a60f2552e57fb72fa5dd4bb90daf630bf972c0d7c3f16a9e98feeefbb7"
  else
    version "0.1.1"
    sha256 "84da8d9f28e9c9f9329dddca1cf4826c6d163b71e7971764dfe39c2ce24f5e22"
  end
  
  url "https://github.com/Bigwig-Club/Account-Switcher/releases/download/v#{version}/Account.Switcher.zip"
  appcast "https://github.com/Bigwig-Club/Account-Switcher/releases.atom"
  name "Account Switcher"
  homepage "https://github.com/Bigwig-Club/Account-Switcher"
  depends_on macos: ">= :catalina"

  app "Account Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.licardo.Account-Switcher.plist",
    "~/Library/Caches/com.licardo.Account-Switcher",
    "~/Library/Containers/com.licardo.Account-Switcher",
  ]
end
