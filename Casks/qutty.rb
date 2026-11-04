cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "a877cc96d8940da2adb329accbf03e8ad0b240c61349f7a3659334cc23af12c7",
         intel: "02d3297c98e2ee7bd4a3d372f23e9334e3532d544e0a3f5b4aa47d4e8b4d8d50"

  url "https://github.com/Brainwires/qutty/releases/download/v#{version}/Qutty-#{version}-#{arch}.dmg"
  name "Qutty"
  desc "Tiling terminal emulator"
  homepage "https://qutty.org/"

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
