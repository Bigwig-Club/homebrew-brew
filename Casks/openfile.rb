cask "openfile" do
  version "1.3.3"
  sha256 "70f64214f3e416b6aa2b4d83d3259c35181a2b86511694af508a8145ec0ccaae"

  url "https://github.com/nlnlnull/OpenFile/releases/download/V#{version}/OpenFile.zip"
  appcast "https://github.com/nlnlnull/OpenFile/releases.atom"
  name "OpenFile"
  homepage "https://github.com/nlnlnull/OpenFile"

  depends_on :macos => ">= :sierra"

  app "OpenFile.app"

  zap :trash => [
    "~/Library/Preferences/houmeng.OpenFile.plist",
  ]
end
