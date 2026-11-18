cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "e2edda76ecce80deb000fb2f54bb86d5c272e4b4a3c44ba2291ddc14b384e420",
         intel: "cd606c923517d4f5181ebcf65691b61108465617dbdee2955a72b424a1312f59"

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
