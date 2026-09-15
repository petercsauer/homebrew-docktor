# homebrew-docktor

Homebrew tap for [docktor](https://docktorapp.com/) — live Dock window previews,
a Cmd+Tab window switcher, and glass widgets (music, calendar, weather, system
stats, batteries) for the macOS Dock.

## Install

```sh
brew install --cask petercsauer/docktor/docktor
```

That's shorthand for:

```sh
brew tap petercsauer/docktor
brew install --cask docktor
```

Requires macOS 26 (Tahoe) or later. The app updates itself via its built-in
Sparkle updater, so `brew upgrade` is not required to stay current.

## Uninstall

```sh
brew uninstall --cask docktor           # remove the app
brew uninstall --zap --cask docktor     # also remove app data and preferences
```

## Maintainers

Each docktor release: bump `version` and `sha256` in `Casks/docktor.rb`. Both
values are published in the app repo at `marketing/website/lib/release.ts`
(`version` and `dmgSha256`); the DMG URL is derived from `version`.
