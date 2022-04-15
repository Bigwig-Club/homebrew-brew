# frozen_string_literal: true

cask "appinfo" do
  version "0.0.2"
  sha256 "8b25081b0d849827b53c9f0254a8b575"

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
