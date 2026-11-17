cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "b6b61edb7e3a7421b19aeacb577d2a65a06834636c378250d59855287b062ae3",
         intel: "34dbd895872d539ebba4d7f38829f3dbac2bb98de9914fd585610979384cbfec"

  url "https://github.com/Brainwires/qutty/releases/download/v#{version}/Qutty-#{version}-#{arch}.dmg"
  name "Qutty"
  desc "Tiling terminal emulator"
  homepage "https://github.com/Brainwires/qutty"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Qutty.app"

  zap trash: [
    "~/Library/Application Support/org.qutty.Qutty",
    "~/Library/WebKit/org.qutty.Qutty",
  ]
end
