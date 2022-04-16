# frozen_string_literal: true

cask "appinfo" do
  version "0.0.2"
  sha256 "1aae6c709f955e122f67081c2c1b6991322b771b3d6accc59dfcd2248a1ee8a2"

  url "https://github.com/uclort/AppInfo-Publish/releases/download/#{version}/AppInfo.zip"
  appcast "https://github.com/uclort/AppInfo-Publish/releases.atom"
  name "AppInfo"
  homepage "https://github.com/uclort/AppInfo-Publish"

  depends_on macos: ">= :monterey"

  app "AppInfo.app"

  zap trash: [
    "~/Library/Containers/uclort.com.AppInfo-macOS/Data/Library/Preferences/uclort.com.AppInfo-macOS.plist",
  ]
end