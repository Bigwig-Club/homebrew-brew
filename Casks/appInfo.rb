# frozen_string_literal: true

cask "appinfo" do
  version "0.0.2"
  sha256 "2448ed3423b785499cbf853e88144d720fbffde831f9929ef20802e19f840409"

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
