cask "hydratree" do
  version "0.1.15"
  sha256 "026c48aa798d501cd437283326b466be80adb4e974139b706c09861a1c6891d2"

  url "https://github.com/MangkornKW/homebrew-hydratree/releases/download/v#{version}/HydraTree-mac.zip"
  name "HydraTree"
  desc "Git client for managing multiple repositories"
  homepage "https://github.com/MangkornKW/homebrew-hydratree"

  app "HydraTree.app"

  # Unsigned Electron builds: strip quarantine, then ad-hoc re-sign so macOS won't
  # kill the app with "Code Signature Invalid" (see scripts/install-mac-unsigned.sh).
  postflight do
    app_bundle = "#{appdir}/HydraTree.app"

    system_command "/usr/bin/xattr",
                   args: ["-cr", app_bundle],
                   sudo: false

    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", app_bundle],
                   sudo: false
  end
end
