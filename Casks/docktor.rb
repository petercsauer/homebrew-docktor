cask "docktor" do
  version "0.15.2"
  sha256 "f08cc47327730e494653e74fbb8c72542cd646bb361b46a7b1b599565b4ef6c4"

  url "https://github.com/petercsauer/docktor-releases/releases/download/v#{version}/docktor-#{version}.dmg"
  name "docktor"
  desc "Live Dock window previews, Cmd+Tab switcher, and glass widgets for the Dock"
  homepage "https://docktorapp.com/"

  # The app ships and self-updates via Sparkle (GitHub Releases appcast), so the
  # cask only needs to track the latest release tag; auto_updates stops Homebrew
  # from fighting the in-app updater.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe # macOS 26.0 (Tahoe) or later

  app "docktor.app"

  zap trash: [
    "~/Library/Application Support/docktor",
    "~/Library/Caches/focusfoundry.docktor",
    "~/Library/HTTPStorages/focusfoundry.docktor",
    "~/Library/Preferences/focusfoundry.docktor.plist",
    "~/Library/Saved Application State/focusfoundry.docktor.savedState",
  ]
end
