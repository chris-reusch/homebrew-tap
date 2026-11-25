cask "lumen" do
  version "0.2.0"
  sha256 "fee6a8306d186cd6392da35ade54fde9517b6bc49b276fffb4e01fb64640b731"

  url "https://github.com/chris-reusch/homebrew-tap/releases/download/lumen-v#{version}/Lumen-#{version}.zip"
  name "Lumen"
  desc "Menu-bar screenshot tool: capture a region, mark it up, copy or save"
  homepage "https://github.com/chris-reusch/homebrew-tap"

  depends_on macos: ">= :sonoma"

  app "Lumen.app"

  # Lumen isn't notarized, so macOS would refuse to open it the first time;
  # clearing the quarantine flag lets it open like a locally built app.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Lumen.app"]
  end

  uninstall quit: "com.chrisreusch.lumen"

  zap trash: [
    "~/Library/Application Support/com.chrisreusch.lumen",
    "~/Library/Caches/com.chrisreusch.lumen",
  ]
end
