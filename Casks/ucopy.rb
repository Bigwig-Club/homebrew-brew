# frozen_string_literal: true

cask "ucopy" do
  version "1.4"
  sha256 "34c803636a77a13e5d98a41cedac5c9a5fd40566cc0f2184fcb8b9f941f06e21"

  url "https://github.com/FaiChou/uCopy/releases/download/v#{version}/uCopy.zip"
  # appcast "https://github.com/FaiChou/uCopy/releases.atom"
  name "uCopy"
  homepage "https://github.com/FaiChou/uCopy"

  depends_on macos: ">= :ventura"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "uCopy.app"

  zap trash: [
    "~/Library/Containers/com.faichou.uCopy",
  ]
end
