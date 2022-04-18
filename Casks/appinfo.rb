# frozen_string_literal: true

cask "appinfo" do
  version "0.0.7"
  sha256 "3e4ec3a937a95b14b0bfe26b36e1ddd3c3328fc1d670ec2dd8a7405e03429b4f"

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
