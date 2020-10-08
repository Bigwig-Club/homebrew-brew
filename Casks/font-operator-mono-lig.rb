# frozen_string_literal: true

cask "font-operator-mono-lig" do
  version "1.0.0"
  sha256 "157895c6827b3c4efad5bedbc3a61f3ad43eeb72a6284de785591b0c4d2acbcd"

  url "https://github.com/Bigwig-Club/homebrew-brew/releases/download/#{version}/font-operator-mono-lig-#{version}.zip"
  name "Operator Mono Ssm Lig"
  homepage "https://github.com/Bigwig-Club/homebrew-brew"

  font "OperatorMonoSSmLig-Bold.otf"
  font "OperatorMonoSSmLig-BoldItalic.otf"
  font "OperatorMonoSSmLig-Book.otf"
  font "OperatorMonoSSmLig-BookItalic.otf"
  font "OperatorMonoSSmLig-Light.otf"
  font "OperatorMonoSSmLig-LightItalic.otf"
  font "OperatorMonoSSmLig-Medium.otf"
  font "OperatorMonoSSmLig-MediumItalic.otf"
end
