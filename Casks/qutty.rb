cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1"
  sha256 arm:   "7cb5315942977892b617fdc585480fbb658b274ffdcc3b862dd487f1859e1662",
         intel: "93ebb6778991fed3a7b399f225d9dde2c6457dadfba11f5f1f7f27b2c06cf297"

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
