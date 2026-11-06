cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "6ba972186d5e05de934851cc0b06f9ee0078254f5f6b50f381153c351f526330",
         intel: "d50815aa2dc0f5d172a411504742856b30ef06de2bd8fcc8706f0270cfbb68d6"

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
