cask 'openfile' do
  version '1.3.2'
  sha256 '1f805f89039358e1f4d3c9f37d7f96819dc312e0e99de3f74e147c85ab236cf6'

  url "https://github.com/nlnlnull/OpenFile/releases/download/V#{version}/OpenFile.zip"
  appcast 'https://github.com/nlnlnull/OpenFile/releases.atom'
  name 'OpenFile'
  homepage 'https://github.com/nlnlnull/OpenFile'

  depends_on macos: '>= :sierra'

  app 'OpenFile.app'

  zap trash: [
                '~/Library/Preferences/houmeng.OpenFile.plist',
             ]
end
