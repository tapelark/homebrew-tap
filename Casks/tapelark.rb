cask "tapelark" do
  version "1.6.0"
  sha256 "afcce73639eb5000123a57322dc484977e284cabf1b76ac1d963f87e0c01d090"

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
