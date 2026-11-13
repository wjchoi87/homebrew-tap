cask "pawmit" do
  version "0.2.4"
  sha256 "ef322e7723161846a3244257475d8e223fbe54e55b09c5c20d1ff6476b4664e6"

  url "https://github.com/wjchoi87/Pawmit/releases/download/v#{version}/Pawmit-#{version}.zip"
  name "Pawmit"
  desc "Desktop pet that answers AI coding agents' approval prompts"
  homepage "https://github.com/wjchoi87/Pawmit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Pawmit.app"

  zap trash: "~/.pawmit"
end
