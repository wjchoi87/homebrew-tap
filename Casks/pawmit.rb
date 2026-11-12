cask "pawmit" do
  version "0.2.3"
  sha256 "b8a7ef9dd072e5120eb8e60191280ec8ce121ee6da3fd1d8ee0524827a8c7bef"

  url "https://github.com/wjchoi87/Pawmit/releases/download/v#{version}/Pawmit-#{version}.zip"
  name "Pawmit"
  desc "Desktop pet that answers AI coding agents' approval prompts"
  homepage "https://github.com/wjchoi87/Pawmit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Pawmit.app"

  zap trash: "~/.pawmit"
end
