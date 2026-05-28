# HydraTree-releases

Public **binary-only** repository for [HydraTree](https://hydratree.xyz) desktop installers.

- **Source code** lives in the private `MangkornKW/HydraTree` repository.
- **This repo** holds GitHub Releases only: `.dmg`, `.exe`, `.zip`, and auto-update manifests (`latest-mac.yml`, `latest.yml`).
- Releases are published automatically by GitHub Actions when a version tag is pushed to the private source repo.

## Download

Latest installers: **[Releases](https://github.com/MangkornKW/HydraTree-releases/releases)**

Or use the landing page: **https://hydratree.xyz**

| Platform | File |
|----------|------|
| macOS | `HydraTree-mac.dmg` |
| Windows | `HydraTree-win.exe` |

## Auto-update

Installed HydraTree apps check this repository for updates via `electron-updater`.
