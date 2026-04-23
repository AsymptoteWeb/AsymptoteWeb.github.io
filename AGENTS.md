# Repository Instructions

## Branch Safety

- Treat `master` as the GitHub Pages deployment branch.
- Do not push Flutter source changes to `master`.
- Do Flutter source work on `source` or a feature branch created from `source`.

## Source of Truth

- The editable Flutter app lives in source folders such as `lib/`, `images/`, `web/`, `pubspec.yaml`, and the platform folders.
- The live website is the built static output that gets published separately to the Pages branch.

## Generated Files

- Do not commit generated build output such as `build/` or `.dart_tool/`.
- Do not commit `.flutter-plugins`, `.flutter-plugins-dependencies`, `.plugin_symlinks`, or platform `ephemeral` folders.
- Do not copy or commit `android/local.properties`; it is machine-specific.

## Ubuntu Workflow

1. Clone the repo and check out `source`.
2. Run `flutter doctor`.
3. Run `flutter pub get`.
4. Run the web app with `flutter run -d chrome`.
5. Make code changes on a feature branch off `source`.

## Deployment

- Only update the GitHub Pages branch from an intentional web build/deployment flow.
- Do not mix deployment output and Flutter source changes in the same commit.

## Known Constraints

- `pubspec.yaml` still declares an older Dart SDK range while `pubspec.lock` was last resolved with a newer Flutter/Dart toolchain.
- Preserve the current source first; do dependency and toolchain upgrades in a separate branch after the project runs on Ubuntu.
