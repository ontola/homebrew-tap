cask "spaceman" do
  version "0.2.0"
  sha256 "6702f6d22ed7a7c4b404f407c4d5b8c791aac5ae9c27a20085cd5f3848f251aa"

  url "https://github.com/ontola/spaceman/releases/download/v#{version}/SpaceMan-macOS.dmg"
  name "SpaceMan"
  desc "Disk space analyzer and cleaner"
  homepage "https://ontola.github.io/spaceman/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "SpaceMan.app"

  zap trash: [
    "~/Library/Application Support/io.ontola.spaceman",
    "~/Library/Caches/io.ontola.spaceman",
    "~/Library/Preferences/io.ontola.spaceman.plist",
    "~/Library/Saved Application State/io.ontola.spaceman.savedState",
  ]
end
