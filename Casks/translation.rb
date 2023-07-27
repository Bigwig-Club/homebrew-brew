# frozen_string_literal: true

cask "translation" do
  version "1.0"
  sha256 "e96fe9e37d98ef47757646822b702a778ad6d1697a35ea0f518e5c5a10a1a359"

  url "https://github.com/uclort/Translation/releases/download/V#{version}/Translation.zip"
  # appcast "https://github.com/uclort/Translation/releases.atom"
  name "Translation"
  homepage "https://github.com/uclort/Translation"

  depends_on macos: ">= :catalina"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Translation.app"
end
