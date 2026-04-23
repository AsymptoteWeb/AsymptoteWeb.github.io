# Ubuntu Setup

This document is the handoff for continuing development from Ubuntu without breaking the live GitHub Pages site.

## Branch Model

- `master` is the deployment branch for the live site.
- `source` is the Flutter source branch.
- Do all development on `source` or a feature branch created from `source`.

## Required Tools

- Git
- Flutter SDK
- Chrome or Chromium for Flutter web

Install Flutter on Ubuntu and ensure `flutter` is on your `PATH`.

## Clone and Start

```bash
git clone https://github.com/AsymptoteWeb/AsymptoteWeb.github.io.git
cd AsymptoteWeb.github.io
git checkout source
flutter doctor
flutter pub get
flutter run -d chrome
```

## Files That Must Be Preserved

The source branch should contain the editable project files:

- `lib/`
- `images/`
- `web/`
- `pubspec.yaml`
- `pubspec.lock`
- `android/`, `ios/`, `linux/`, `macos/`, `windows/` when they are intentionally tracked
- `README.md`, `AGENTS.md`, and this document

Do not rely on copying machine-local files from Windows. Ubuntu should recreate local files as needed.

## Files That Should Not Be Carried Over

- `android/local.properties`
- `.dart_tool/`
- `build/`
- `.flutter-plugins`
- `.flutter-plugins-dependencies`
- `**/.plugin_symlinks/`
- `**/ephemeral/`

## Deployment Safety

Do not push source work to `master`.

If you need to publish a new live site later, build the web app intentionally and update the deployment branch as a separate deployment step.

## Current Tooling State

- The project was last actively maintained in 2023.
- `pubspec.yaml` declares `sdk: '>=2.18.0-165.1.beta <3.0.0'`.
- `pubspec.lock` was last resolved with a newer Dart/Flutter toolchain.

That mismatch is expected in the current preserved state. Do not try to modernize everything during migration. First get the source branch running on Ubuntu, then create a separate upgrade branch for Flutter/Dart/package updates.

## Recommended Next Steps On Ubuntu

1. Verify `flutter doctor` is clean enough to run web locally.
2. Run `flutter pub get`.
3. Confirm the app starts in Chrome.
4. Create a feature branch for cleanup and modernization.
5. Upgrade Flutter/Dart/packages in small steps after the baseline is working.
