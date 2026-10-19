cask "mdvu" do
  version "0.5.1"
  sha256 "416cd28af8903fff150a9785127401b3e25c240a4c8a88c87c7d26f98c02e151"

  url "https://github.com/stpork/mdvu/releases/download/v#{version}/mdvu-#{version}-macos-universal.zip"
  name "mdvu"
  desc "Ultra-fast, lightweight native macOS Markdown viewer"
  homepage "https://github.com/stpork/mdvu"

  depends_on macos: :ventura

  app "mdvu.app"
  binary "#{appdir}/mdvu.app/Contents/MacOS/mdvu", target: "mdvu"

  zap trash: [
    "~/Library/Caches/com.mdvu.viewer",
    "~/Library/Preferences/com.mdvu.viewer.plist",
    "~/Library/Saved Application State/com.mdvu.viewer.savedState",
  ]
end
