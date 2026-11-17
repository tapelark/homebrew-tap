cask "tapelark" do
  version "1.5.0"
  sha256 "bed9715fb6b827061a0dd01c26d37299a7faf3c2efe19c0b076fd25687625739"

  url "https://downloads.tapelark.com/Tapelark-#{version}.dmg"
  name "Tapelark"
  desc "Records audio other apps play and organises it into a library"
  homepage "https://tapelark.com/"

  livecheck do
    url "https://downloads.tapelark.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tapelark.app"

  # The recordings (~/Music/Tapelark by default) and the licence in the Keychain are the user's and stay.
  zap trash: [
    "~/Library/Application Support/Tapelark",
    "~/Library/Caches/com.tapelark.app",
    "~/Library/Caches/Tapelark",
    "~/Library/HTTPStorages/com.tapelark.app",
    "~/Library/Preferences/com.tapelark.app.plist",
    "~/Library/Saved Application State/com.tapelark.app.savedState",
  ]
end
