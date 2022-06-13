# Flutter Template

The goal of this project is to setup the foundation of the core pieces of every app.

1. Localization
2. Navigation
3. State
4. Overall Architecture

## Getting Started

Before getting started, there are a few pieces that need to be renamed. I recomend useing a find and replace to make this easier.

1. Replace the Bundle ID for all platforms. `com.uptechstudio.flutter_template`
2. Rename the app for all platforms. `Flutter Template`. Note: This is not the readable name that is displayed on the user homescreen for instance. That is a change that is per platform.

## Generating State Files

When you have created your basic state files, you have to tell Freezed to generate the coresponding type files. This can be achieved by running
`flutter pub run build_runner build` or if its failing to generate, you can append the `--delete-conflicting-outputs`

## Updating Localization

When it comes to updating localization changes, you simply need to run `flutter pub get` this will not only trigger pub to fetch packages, but to also generate the localization files.

Note: VS Code has issues with itself that sometimes you need to either restart the app after running a pub get, or by restarting the Dart Analysis Server.
