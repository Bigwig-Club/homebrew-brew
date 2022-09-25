# frozen_string_literal: true

cask "appinfo" do
  version "0.0.9"
  sha256 "7a367b6dba7e068d709a92a6e10a2fee7d437e99d855d6db8b73bb3bb7061b08"

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
