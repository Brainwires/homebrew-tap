cask "qutty" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.3"
  sha256 arm:   "56890dc3eb215d756a2fb1312e7a30e77fa1f7b573d544f0432c24f609bef88d",
         intel: "f8c60708d30f99553a3ff152b10d666b422c003905c9fe33202ded875e1101fa"

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
