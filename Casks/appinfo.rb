# frozen_string_literal: true

cask "appinfo" do
  version "2.0.4"
  sha256 "0dd5fc8b8b0e0f0c146add90f833d6fd71c1eda94506b27ae233f78887da2489"

  url "https://github.com/uclort/AppInfo-Publish/releases/download/#{version}/AppInfo.zip"
  # appcast "https://github.com/uclort/AppInfo-Publish/releases.atom"
  name "AppInfo"
  homepage "https://github.com/uclort/AppInfo-Publish"

  depends_on macos: ">= :monterey"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "AppInfo.app"

  zap trash: [
    "~/Library/Containers/uclort.com.AppInfo/Data/Library/Preferences/uclort.com.AppInfo.plist",
  ]
end
