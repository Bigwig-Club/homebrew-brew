cask "app-tracker" do
  version "1.0.1"
  sha256 "9771d7de43fdcd8f6a12b940597039d8c47e78523f83378880dedde211cea46a"

  url "https://github.com/L1cardo/AppTracker-Release/releases/download/v#{version}/App.Tracker.zip"
  appcast "https://github.com/L1cardo/AppTracker-Release/releases.atom"
  name "App Tracker"
  homepage "https://github.com/L1cardo/AppTracker-Release"

  depends_on :macos => ">= :catalina"

  app "App Tracker.app"

  zap :trash => [
    "~/Library/Preferences/com.licardo.AppTracker.plist",
    "~/Library/Caches/com.licardo.AppTracker",
    "~/Library/Containers/com.licardo.AppTracker",
  ]
end
