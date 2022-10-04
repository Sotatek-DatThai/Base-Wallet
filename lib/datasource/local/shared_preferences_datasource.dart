import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataSource {
  final SharedPreferences _sp;

  SharedPreferencesDataSource(this._sp);

  Future<bool> setLoggedIn() => _sp.setBool(_firstLogInKey, true);

  bool isLoggedIn() => _sp.getBool(_firstLogInKey) ?? false;
}

const String _firstLogInKey = 'firstLogIn';
