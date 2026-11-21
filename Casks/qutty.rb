cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.2"
  sha256 arm:   "3440378c00090c23d29009f6446a1b2e28c732f43608487f01681200b2f75d72",
         intel: "8ecb883d531ab055d8c443b37ddac01ddfffcadb015e2449495c2c89eadab3dc"

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
