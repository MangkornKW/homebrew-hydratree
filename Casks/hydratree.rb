cask "hydratree" do
  version "0.1.5"
  sha256 "36a083d5a75b842bbc2bceb9a161b17e35bf4b6af70ad75781c970cf3c6d3250"

  url "https://github.com/MangkornKW/homebrew-hydratree/releases/download/v#{version}/HydraTree-mac.zip"
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
