cask "docktor" do
  version "0.14.2"
  sha256 "8f6fd7fc890f000e57b7a4897920051b324a934cfa907dee3b70ec2c5fd26a7e"

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
