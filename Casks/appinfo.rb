# frozen_string_literal: true

cask "appinfo" do
  version "0.1.0"
  sha256 "42f5a40cffe805b40abc164b41a1eb941eca3fc8468d500a2c5713db61dd0e41"

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
