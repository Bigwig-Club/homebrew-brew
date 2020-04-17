cask 'jsontohandyjson' do
  version '1.0'
  sha256 'c8ce93f9d43a616a54e34d438904cd07680747a1898c122df1ab9dc105910bc7'

  url "https://github.com/nlnlnull/JSONToHandyJSON/releases/download/V#{version}/JSONToHandyJSON.zip"
  appcast 'https://github.com/nlnlnull/JSONToHandyJSON/releases.atom'
  name 'JSONToHandyJSON'
  homepage 'https://github.com/nlnlnull/JSONToHandyJSON'

  depends_on macos: '>= :sierra'

  app 'JSONToHandyJSON.app'

  zap trash: [
             ]
end
