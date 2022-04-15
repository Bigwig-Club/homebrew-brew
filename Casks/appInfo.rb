# frozen_string_literal: true

cask "appinfo" do
  version "0.0.1"
  sha256 "05230bd6fe646a80eb62bafb619cf7e84f59e7e6847411ad96606c96eda8eccb"

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
