# frozen_string_literal: true

cask "appinfo" do
  version "2.0.5"
  sha256 "a9408cd47e16dc4e6958f078ef80443ef8a7ee52e3094157c7e3af4ce2287d89"

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
