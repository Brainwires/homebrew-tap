cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.1"
  sha256 arm:   "3f39c4f94cbacab794e89232ffa8f1f33b357e78afcf22d2204d5218ef47b3d0",
         intel: "5923d59bf914d530b7ec9c7fc8dee0bec44ef18d965cd747cf70f678a6d4cc2b"

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
