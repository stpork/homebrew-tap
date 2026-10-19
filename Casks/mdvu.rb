cask "mdvu" do
  version "0.5.2"
  sha256 "ddb9a595d57593d39ff10d681f838ed661adb5d8b86c7bf60ba1afb6d934249f"

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
