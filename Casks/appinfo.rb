# frozen_string_literal: true

cask "appinfo" do
  version "2.0.0"
  sha256 "405a3d70ee473db365299ab13b2c09b27d8835a2509318d8562301c513ee90f8"

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
