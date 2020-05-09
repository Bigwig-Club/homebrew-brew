cask 'jsontohandyjson' do
  version '1.1'
  sha256 'aa89d14db120f70daed479ac681c220ade9c106beb4ee10b4c01b3c5ea756b08'

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
