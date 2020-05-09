cask 'jsontohandyjson' do
  version '1.2'
  sha256 '1de0b22d9b691e9889a645a46f03552dcb4a074155f530e5d714f8f4ddd13ca9'

  url "https://github.com/nlnlnull/JSONToHandyJSON/releases/download/V#{version}/JSONToHandyJSON.zip"
  appcast 'https://github.com/nlnlnull/JSONToHandyJSON/releases.atom'
  name 'JSONToHandyJSON'
  homepage 'https://github.com/nlnlnull/JSONToHandyJSON'

  depends_on macos: '>= :sierra'

  app 'JSONToHandyJSON.app'

  zap trash: [
    '~/Library/Preferences/houmeng.JSONToHandyJSON.plist',
    '~/Library/Containers/houmeng.JSONToHandyJSON/Data/Library/Preferences/houmeng.JSONToHandyJSON.plist'
             ]
end
