# frozen_string_literal: true

cask "upic" do
  version "0.21.1"
  sha256 "1152e2f3995cc33d16d764348618a70a9fb067f2b17f548a813646809aa1154c"

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  # appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  desc "uPic is a native, powerful, beautiful and simple picture and file upload tool for macOS"
  homepage "https://github.com/gee1k/uPic"

  auto_updates true

  app "uPic.app"
  shimscript = "#{staged_path}/upic.wrapper.sh"
  binary shimscript, target: "upic"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/uPic.app/Contents/MacOS/uPic' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
    "~/Library/Group Containers/group.svend.uPic",
    "~/Library/Containers/com.svend.uPic.macos",
    "~/Library/Containers/com.svend.uPic.macos.uPicShareExtension",
    "~/Library/Containers/com.svend.uPic.macos.uPicActionExtension",
    "~/Library/Containers/com.svend.uPic.macos.uPicAppIntentsExtension",
    "~/Library/Application Scripts/group.svend.uPic",
    "~/Library/Application Scripts/com.svend.uPic.macos",
    "~/Library/Application Scripts/com.svend.uPic.macos.uPicActionExtension",
    "~/Library/Application Scripts/com.svend.uPic.macos.uPicAppIntentsExtension",
    "~/Library/Application Scripts/com.svend.uPic.macos.uPicShareExtension"
  ]
end
