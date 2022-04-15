# frozen_string_literal: true

cask "appinfo" do
  version "0.0.2"
  sha256 "96c3378fd10d67f591c8cfe6dbf5597d559b18237fd4a5072f4bae5c04cb3dea"

  url "https://github.com/uclort/AppInfo-Publish/releases/download/#{version}/AppInfo.zip"
  appcast "https://github.com/uclort/AppInfo-Publish/releases.atom"
  name "AppInfo"
  homepage "https://github.com/uclort/AppInfo-Publish"

  depends_on macos: ">= :monterey"

  app "AppInfo.app"

  # zap trash: [
  #   "~/Library/Preferences/houmeng.OpenFile.plist",
  # ]
end
