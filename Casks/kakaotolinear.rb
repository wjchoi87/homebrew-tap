cask "kakaotolinear" do
  version "0.5.0"
  sha256 "20ba772540c2884a3dbc3683f99c3a27a0e66045e565c84a9f1f15d26ebd9771"

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
