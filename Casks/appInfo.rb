# frozen_string_literal: true

cask "appinfo" do
  version "0.0.1"
  sha256 "863e06e48754109dc927ec929be93f9b7415135b0d333bfefbe7f82ea29176a7"

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
