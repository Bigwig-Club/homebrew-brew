# frozen_string_literal: true

cask "ucopy" do
  version "1.2"
  sha256 "5759d911b38f2c7295f9d0fa1dd78bb591f67f3aca7b701e5c5aea37c7288e95"

  url "https://github.com/FaiChou/uCopy/releases/download/#{version}/uCopy.zip"
  appcast "https://github.com/FaiChou/uCopy/releases.atom"
  name "uCopy"
  homepage "https://github.com/FaiChou/uCopy"

  depends_on macos: ">= :ventura"

  app "uCopy.app"

  zap trash: [
    "~/Library/Containers/com.faichou.uCopy",
  ]
end
