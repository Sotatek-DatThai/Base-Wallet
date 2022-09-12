# base_wallet

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Command

```dart
flutter build ios --release

flutter run --flavor prod -t lib/main_prod.dart

flutter run --flavor dev -t lib/main_dev.dart

flutter run --flavor stg -t lib/main_stg.dart

flutter build apk --release --flavor prod -t lib/main_prod.dart

flutter build apk --release --flavor stg -t lib/main_stg.dart

flutter build apk --release --flavor dev -t lib/main_dev.dart

flutter build appbundle --release --flavor prod -t lib/main_prod.dart
```

```dart
flutter pub run build_runner build --delete-conflicting-outputs
```

Watching changes

```dart
flutter pub run build_runner watch --delete-conflicting-outputs
```

Easy Localization command

```dart
flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/l10n -o locale_keys.g.dart

flutter pub run easy_localization:generate -S assets/translations -s en-US.json -f keys -O lib/l10n -o locale_keys.g.dart
```

```terminal
xcrun simctl erase all

flutter pub run dart_code_metrics:metrics analyze lib

flutter pub run dart_code_metrics:metrics check-unused-files lib

flutter pub run dart_code_metrics:metrics check-unused-l10n lib

flutter pub run dart_code_metrics:metrics check-unused-code lib

rm -rf ios/Flutter/Flutter.framework

flutter clean;flutter pub get;cd ios;pod deintegrate;pod install --repo-update

flutter clean;flutter pub get;flutter pub run build_runner build --delete-conflicting-outputs;cd ios;pod deintegrate;pod install
```