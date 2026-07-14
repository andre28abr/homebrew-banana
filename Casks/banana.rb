cask "banana" do
  version "0.1.5"
  sha256 "d1ad2d0ced567bd477d4d760efe9682001c570c65b73ff6b1e3b72c1ce1e6cc5"

  url "https://github.com/andre28abr/banana-releases/releases/download/v#{version}/Banana_#{version}_aarch64.dmg"
  name "Banana"
  desc "Notas, tão simples quanto descascar uma banana"
  homepage "https://github.com/andre28abr/banana-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Apple Silicon only por enquanto. Intel Macs precisam esperar build x86_64.
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Banana.app"

  zap trash: [
    "~/Library/Application Support/dev.banana.Banana",
    "~/Library/Preferences/dev.banana.Banana.plist",
    "~/Library/Caches/dev.banana.Banana",
    "~/Library/Saved Application State/dev.banana.Banana.savedState",
    "~/Library/WebKit/dev.banana.Banana",
  ]
end
