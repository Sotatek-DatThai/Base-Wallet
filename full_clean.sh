flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
cd ios
pod deintegrate
pod install