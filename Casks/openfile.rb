cask 'openfile' do
    version '1.3.1'
    sha256 '8733ea3fea31b55b39564f78c1d3a24f7ec41ef712471428e7f76a2f79a2b4b2'
  
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
  
