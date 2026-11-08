cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "bd95dd7d29db0a701aece973b6f4e524b0b1780bf803d202b2fa7ebdff0e9575",
         intel: "667de467016d05c35e187d1b0780d045dcdc1609b55fac05d2ea11b6046022e9"

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
