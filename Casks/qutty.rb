cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.1"
  sha256 arm:   "42f442ad3bcc358639232b47002f5a03492925ce9420abb7b3e95b1b62e84ab8",
         intel: "ee5e744cabb07808f7709b67ff4a0c86df77f917803c420f4ce9138e496baabf"

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
