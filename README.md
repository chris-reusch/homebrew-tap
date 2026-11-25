# chris-reusch/homebrew-tap

```sh
brew install --cask chris-reusch/tap/lumen
```

## Lumen

A menu-bar screenshot tool for macOS 14 and later. Press ⌘⇧2, drag out a
region (or click a window), mark it up, then ⌘C to copy or ⌘S to save.
Shortcuts, the save folder and more are under *Settings…* in its menu.

The first capture asks for the Screen Recording permission (System
Settings › Privacy & Security › Screen Recording).

Lumen is signed but not notarized by Apple, so the cask clears macOS's
"downloaded from the internet" flag after installing; otherwise macOS
refuses to open it the first time.

Update with `brew update && brew upgrade --cask lumen`; remove with
`brew uninstall --cask lumen` (add `--zap` to remove its settings too).
