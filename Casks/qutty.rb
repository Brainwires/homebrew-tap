cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "1f3e89fe2c73fa0f429e18bf4d0e6f9b7d6c1ef6ad19d958599760994961c6de",
         intel: "6e106f845fff3735514e5902cfb928af95288fec4439a1859be7fdb8a37aeb50"

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
