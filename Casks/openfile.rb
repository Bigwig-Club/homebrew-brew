# frozen_string_literal: true

cask "openfile" do
  version "1.3.4"
  sha256 "960d2c26e47989a493ca8a26851ebcbe3fd99a62c3733d4149a121cc66cac08e"

  url "https://github.com/uclort/OpenFile/releases/download/V#{version}/OpenFile.zip"
  # appcast "https://github.com/uclort/OpenFile/releases.atom"
  name "OpenFile"
  homepage "https://github.com/uclort/OpenFile"

  depends_on macos: ">= :sierra"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenFile.app"

  zap trash: [
    "~/Library/Preferences/houmeng.OpenFile.plist",
  ]
end
