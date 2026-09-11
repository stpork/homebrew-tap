cask "mdvu" do
  version "0.3.1"
  sha256 "7f800e5119df8a5c7d82cc9dce70203f21eb890e0b56a7f27daa86867f4269c2"

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
