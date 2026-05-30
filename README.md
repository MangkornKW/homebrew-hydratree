# HydraTree-releases

Public **binary-only** repository for [HydraTree](https://hydratree.xyz) desktop installers.

- **This repo** holds GitHub Releases only: `.dmg`, `.exe`, `.zip`, and auto-update manifests (`latest-mac.yml`, `latest.yml`).
- Releases are published automatically by GitHub Actions when a version tag is pushed to the private source repo.

## Download

Latest installers: **[Releases](https://github.com/MangkornKW/HydraTree-releases/releases)**

Or use the landing page: **https://hydratree.xyz/download**

| Platform | File |
|----------|------|
| macOS | `HydraTree-mac.dmg` |
| Windows | `HydraTree-win.exe` |

Direct links (latest):

- macOS: https://github.com/MangkornKW/HydraTree-releases/releases/latest/download/HydraTree-mac.dmg
- Windows: https://github.com/MangkornKW/HydraTree-releases/releases/latest/download/HydraTree-win.exe

## Auto-update

Installed HydraTree apps check this repository for updates via `electron-updater`.

---

## Trust & verification

HydraTree keeps application source private, but installers are published here on purpose so anyone can download and update without access to the dev repo.

**Official download sources**

| Source | URL |
|--------|-----|
| This repo (releases) | https://github.com/MangkornKW/HydraTree-releases/releases |
| Project website | https://hydratree.xyz/download |

Treat any other mirror, file host, or fork as **unofficial** unless it clearly points back to the links above.

**How releases are produced**

1. A maintainer tags a version in the private `HydraTree` repo (for example `v0.1.3`).
2. GitHub Actions builds signed macOS and Windows artifacts.
3. `electron-builder` uploads those files to **this** public repo only.

You will not find application source here — only installers and update metadata. That is expected.

**What to check before you install**

- The release is under **`MangkornKW/HydraTree-releases`**, not a similarly named fork.
- Asset names match the table above (`HydraTree-mac.dmg`, `HydraTree-win.exe`).
- The version on the [Releases](https://github.com/MangkornKW/HydraTree-releases/releases) page matches what the website lists.

On macOS, Gatekeeper may ask you to confirm the app the first time you open it — normal for apps distributed outside the Mac App Store.

---

## Questions & answers (Q&A)

**Why is the source repo private but this repo public?**

HydraTree is still in active development. Installers and update manifests need a public home so users can download and receive updates; source stays private until the project is ready to open more broadly.

**Where do I report bugs or ask for help?**

Use **[GitHub Issues](https://github.com/MangkornKW/HydraTree-releases/issues)** on this repository. That keeps install, update, and download questions in one open place tied to the builds you are running.

Please include:

- HydraTree version (About or app title bar)
- macOS or Windows version
- Steps to reproduce
- Screenshots or logs if something failed during install or update

**Is there a community forum?**

Not yet. For now, Issues on this repo are the open channel for questions and feedback about releases. General product info and docs live at **https://hydratree.xyz**.

**How do I verify I have the latest build?**

Open HydraTree → check for updates (the app reads this repo), or compare your version with the latest tag on the [Releases](https://github.com/MangkornKW/HydraTree-releases/releases) page.

**Can I build from source?**

Not from this repository — it contains installers only. When source becomes public, the main project README will describe how to build locally.

**Is HydraTree free?**

Yes. HydraTree is free to download and use. Optional support links are on the website if you want to contribute.

---

## Links

| | |
|---|---|
| Website | https://hydratree.xyz |
| Download page | https://hydratree.xyz/download |
| Releases | https://github.com/MangkornKW/HydraTree-releases/releases |
| Questions & bugs | https://github.com/MangkornKW/HydraTree-releases/issues |
