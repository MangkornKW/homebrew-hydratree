cask "hydratree" do
  version "0.1.20"
  sha256 "f173b3494c3223f8090e7f36c29934ab4d3d52c2e0ff2ccf8bf9d2279eb9c43b"

  url "https://github.com/MangkornKW/homebrew-hydratree/releases/download/v#{version}/HydraTree-mac.zip"
  name "HydraTree"
  desc "Git client for managing multiple repositories"
  homepage "https://hydratree.xyz"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

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

  zap trash: [
    "~/Library/Application Support/HydraTree",
    "~/Library/Caches/com.hydratree.app",
    "~/Library/Caches/com.hydratree.app.ShipIt",
    "~/Library/Caches/hydratree-updater",
    "~/Library/HTTPStorages/com.hydratree.app",
    "~/Library/Logs/HydraTree",
    "~/Library/Preferences/com.hydratree.app.plist",
    "~/Library/Saved Application State/com.hydratree.app.savedState",
  ]
end
