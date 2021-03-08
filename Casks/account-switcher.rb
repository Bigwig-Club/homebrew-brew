# frozen_string_literal: true

cask "account-switcher" do
  if MacOS.version >= :big_sur
    version "1.1.4"
    sha256 "4ba198ff56325c904c9acc8dd1d5ca4e519ee175de2da7fb66e8c22cb9b050d3"
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
    "~/Library/Saved Application State/com.licardo.Account-Switcher.savedState"
  ]
end
