cask "autoclicker" do
  version "1.7.28"
  sha256 "2ade6ccabcf0f8c8a0bef51eb81334f6bbb9a87373a7298e314d91d1bae0cf9b"

  url "https://github.com/othyn/macos-auto-clicker/releases/download/v#{version}/AutoClicker.zip"
  name "AutoClicker"
  desc "A simple auto clicker for macOS in swift"
  homepage "https://github.com/othyn/macos-auto-clicker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "AutoClicker.app"

  zap trash: [
    "~/Library/Preferences/com.othyn.auto-clicker.plist",
  ]
end