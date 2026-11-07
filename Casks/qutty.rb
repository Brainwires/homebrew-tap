cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.1"
  sha256 arm:   "acf91c8f9a4cf82dc43758b64bc42a79869d7640cec2a366e348f03f58888fcf",
         intel: "3d5067f6f30fc04a178707d57d28cec8eb0a8f2210f3434828f55af940381548"

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
