cask 'upic' do
  version '0.20.1'
  sha256 '0b12f713fc621ba1af63fdb4e73ab4dc1d77ef559140f0b705dfb24736468c08'
  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  homepage "https://github.com/gee1k/uPic"

  depends_on :macos => ">= :sierra"

  app "uPic.app"

  zap :trash => [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
  ]
end
