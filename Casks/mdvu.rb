cask "mdvu" do
  version "0.2.0"
  sha256 "f3b9423286560aab33af697c8bf05c3c327dde0077bd33302e1852e0f4fa28dd"

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
