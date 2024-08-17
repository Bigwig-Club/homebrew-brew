# frozen_string_literal: true

cask "appinfo" do
  version "2.0.1"
  sha256 "0bbc41f3a5665cd35dc511f981f9ae31e634e57dc86c4ed85b5afdbc459774ce"

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
