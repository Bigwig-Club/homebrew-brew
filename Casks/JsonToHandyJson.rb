cask 'jsontohandyjson' do
  version '1.0'
  sha256 '6c6a42012623abcc4b33c948fddc627321e3db7e35cf7f8e55beb8e239339b5c'

  url "https://github.com/nlnlnull/JsonToHandyJson/releases/download/V#{version}/JsonToHandyJson.zip"
  appcast 'https://github.com/nlnlnull/JsonToHandyJson/releases.atom'
  name 'JsonToHandyJson'
  homepage 'https://github.com/nlnlnull/JsonToHandyJson'

  depends_on macos: '>= :sierra'

  app 'JsonToHandyJson.app'

  zap trash: [
             ]
end
