# frozen_string_literal: true

cask "appinfo" do
  version "0.0.8"
  sha256 "4df2d1d094d861f0006810494f0792d9d51dae6d0ca0b8f719534fa6d216bc5b"

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
