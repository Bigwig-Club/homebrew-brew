# frozen_string_literal: true

cask "app-tracker" do
  version "1.0.0"
  sha256 "d2ae0edcf4c015330df310439389ecb0c70ed6c3f778644a1367a8376df63913"

  url "https://github.com/L1cardo/AppTracker-Release/releases/download/v#{version}/App.Tracker.zip"
  # appcast "https://github.com/L1cardo/AppTracker-Release/releases.atom"
  name "App Tracker"
  homepage "https://github.com/L1cardo/AppTracker-Release"

  depends_on macos: ">= :monterey"

  app "App Tracker.app"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.licardo.AppTracker.plist",
    "~/Library/Caches/com.licardo.AppTracker",
    "~/Library/Containers/com.licardo.AppTracker",
  ]
end
