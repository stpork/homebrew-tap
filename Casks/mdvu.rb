cask "mdvu" do
  version "0.4.1"
  sha256 "dbaeeaad437cfc88c8c8ba3ff810cf2c046646e0a05a7ea9f34f099039b13936"

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
