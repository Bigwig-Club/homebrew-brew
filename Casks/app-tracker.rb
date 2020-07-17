
cask 'app-tracker' do
  version '1.0.0'
  sha256 'e1340f9dd0ab81c9b9c1ebcb36b3659b3c5900f910545e4bf3068c3a7e756ad9'

  url "https://github.com/L1cardo/AppTracker-Release/releases/download/v#{version}/App.Tracker.dmg"
  appcast 'https://github.com/L1cardo/AppTracker-Release/releases.atom'
  name 'App Tracker'
  homepage 'https://github.com/L1cardo/AppTracker-Release'

  depends_on macos: '>= :catalina'

  app 'App Tracker.app'

  zap trash: [
               '~/Library/Preferences/com.licardo.AppTracker.plist',
               '~/Library/Caches/com.licardo.AppTracker',
               '~/Library/Containers/com.licardo.AppTracker'
             ]
end
