cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "d8bdb0922cdb2ee231969f28ef3869b521571c33396f32d275f7d60eef98fc99",
         intel: "e804080da8e32cc084c94ea46285f45d3628c5dc34c1d0b5eca785aab3238a82"

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
