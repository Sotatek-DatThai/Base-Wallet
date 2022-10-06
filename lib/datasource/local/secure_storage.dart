import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorage(this._secureStorage);

  Future<String?> getAccessToken() => _secureStorage.read(key: _accessToken);

  Future<void> setAccessToken(String token) =>
      _secureStorage.write(key: _accessToken, value: token);

  static const String _accessToken = 'access_token';
}
