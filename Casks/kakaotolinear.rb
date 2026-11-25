cask "kakaotolinear" do
  version "0.5.1"
  sha256 "614b1e95ebf10ea4d6b2f208f6a6158d2c7663df6d965b60ccdf2b510fd19ca8"

  url "https://github.com/wjchoi87/KakaoToLinear/releases/download/v#{version}/KakaoToLinear-#{version}.zip"
  name "KakaoToLinear"
  desc "Turn selected KakaoTalk messages into Linear issues with AI"
  homepage "https://github.com/wjchoi87/KakaoToLinear"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "KakaoToLinear.app"
  binary "#{appdir}/KakaoToLinear.app/Contents/MacOS/kakao-linear"

  zap trash: [
    "~/Library/Application Support/KakaoToLinear",
    "~/Library/Caches/com.kakaotolinear.app",
    "~/Library/HTTPStorages/com.kakaotolinear.app",
    "~/Library/Preferences/com.kakaotolinear.app.plist",
  ]
end
