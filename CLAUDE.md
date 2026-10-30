# iTorrent (MagicTV)

Fork of XITRIX/iTorrent, shipped to TestFlight as `dev.wobblygoat.magictv` (team 5539XQQATJ).

- Changes go through pull requests: a push to main is a release. A merge that touches the app
  uploads a TestFlight build through release-kit (`.github/workflows/testflight.yml`).
- `make version` prints the version the next build gets (`1.0.<commit count>`).
- `make deps` fetches the submodules, generates LibTorrent's libtorrent project and writes a
  placeholder `GoogleService-Info.plist` if there is none; open `iTorrent.xcworkspace`, not the
  project.
- `DRY_RUN=1 make testflight` archives without uploading; `make testflight` uploads (needs `.env`,
  see `.env.example`).
