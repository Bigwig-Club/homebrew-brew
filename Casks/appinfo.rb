# frozen_string_literal: true

cask "appinfo" do
  version "2.0.3"
  sha256 "66d95f2a51e1541c82863dd53e0261f5246e76a0c56ca9d8c2fc5a407fb9d00e"

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
