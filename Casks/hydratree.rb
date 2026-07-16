cask "hydratree" do
  version "0.1.9"
  sha256 "a34cc816cd58cbfd22906a67af6d63ecde7f1ded8003d788877e5ae9a184a044"

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
