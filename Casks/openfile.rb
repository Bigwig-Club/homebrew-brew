cask 'openfile' do
    version '1.3'
    sha256 'ac5d537fed6622f1f6438606a9ca19c92b9ed13ddb9628c93f892a797c535f96'
  
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
  