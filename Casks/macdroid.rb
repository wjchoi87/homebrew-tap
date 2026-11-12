cask "macdroid" do
  version "1.0.0"
  sha256 "d8e382a903dc1483ea5491cdf5604c42d96e6ff8b64526471f467123ad5335cf"

  url "https://github.com/wjchoi87/MacDroid/releases/download/v#{version}/MacDroid-#{version}-macos-arm64.zip"
  name "MacDroid"
  desc "Native DeX for macOS - mirror an Android phone, or use it as a desktop with app windows"
  homepage "https://github.com/wjchoi87/MacDroid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "MacDroid.app"

  zap trash: "~/Library/Preferences/kr.macdroid.MacDroid.plist"
end
