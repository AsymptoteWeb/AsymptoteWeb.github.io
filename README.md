# Asymptote Web App

Flutter web app for Asymptote General Contracting LLC.

## Overview

This repository contains the source code for the company website built in Flutter.
The app is primarily a marketing/presence site with responsive layouts for desktop
and mobile, and includes:

- hero section and company introduction
- projects gallery
- services section with modal detail dialogs
- contact form
- footer with business contact details

The main app entry point is `lib/main.dart`, which loads `HomePage` and renders
the website UI from `lib/homescreen.dart`.

## Tech Stack

- Flutter
- Dart
- `sizer` for responsive sizing
- `google_fonts` for typography
- `dropdown_button2` for the mobile menu
- `url_launcher` for phone links
- `http` for the contact form request

## Contact Form

The contact form posts to EmailJS using hardcoded identifiers in
`lib/Additional/sending_auto_email.dart`.

If these EmailJS values are changed or removed, form submission will stop working.
If this repo is ever made public, move those identifiers out of source control and
review the current EmailJS setup.

## Project Structure

- `lib/main.dart` - app entry point
- `lib/home.dart` - top-level page wrapper
- `lib/homescreen.dart` - main website UI
- `lib/Additional/website_contents.dart` - company text, services, project labels, contact details
- `lib/Additional/sending_auto_email.dart` - EmailJS POST request
- `images/` - website image assets used by the Flutter app
- `web/` - Flutter web host page and manifest
- `test/` - default widget test scaffold

## Local Development

1. Install Flutter and Chrome.
2. From the repo root, run:

```bash
flutter pub get
flutter run -d chrome
```

To build the web app:

```bash
flutter build web
```

## GitHub Pages / Deployment Note

This project has historically mixed two different concerns:

- Flutter source code
- built static files for the live GitHub Pages site

Keep those separate.

Recommended setup:

- keep the Flutter source on a dedicated branch or in a dedicated repo
- keep the GitHub Pages branch for built static output only

Do not develop directly against the branch that serves the live website unless you
intend to replace the deployed files.

## Ubuntu Migration Notes

The important files to preserve when moving to Ubuntu are the source files:

- `lib/`
- `web/`
- `images/`
- `pubspec.yaml`
- `pubspec.lock`
- platform folders you still care about such as `android/`, `ios/`, `linux/`, `macos/`, `windows/`

Do not carry machine-specific files across environments:

- `android/local.properties`
- `.dart_tool/`
- `build/`
- `.flutter-plugins`
- `.flutter-plugins-dependencies`
- IDE-specific files

On Ubuntu, Flutter will recreate the local machine files after `flutter pub get`
or the first platform build.

## Versioning Caution

This codebase was last actively worked on in 2023 and parts of the toolchain are
old. Before a full modernization pass, first make sure the source is safely stored
in Git and cloned cleanly on the new machine.

The safest order is:

1. clean up and preserve the Git source history
2. clone the source on Ubuntu
3. confirm the app builds/runs there
4. upgrade Flutter, Dart, and packages on a separate branch

## Suggested Next Step

Before switching machines, make sure the Flutter source is pushed to GitHub on a
branch that is separate from the GitHub Pages deployment branch.
