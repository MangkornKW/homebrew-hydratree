cask "hydratree" do
  version "0.1.4"
  sha256 "7ddf7341b17e3a71cbda302d09c950ead907dd8a2d8c1726892831ec95590514"

  url "https://github.com/MangkornKW/homebrew-hydratree/releases/download/v#{version}/HydraTree-mac-app.zip"
  name "HydraTree"
  desc "Git client for managing multiple repositories"
  homepage "https://github.com/MangkornKW/homebrew-hydratree"

  app "HydraTree.app"

  # Automatically remove Gatekeeper quarantine block after extraction
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/HydraTree.app"],
                   sudo: false
  end
end
