import 'package:base_wallet/datasource/remote/auth/auth_api.dart';
import 'package:base_wallet/repository/abstracts/auth_repository.dart';

class AuthImplementation extends IAuthRepository {
  final AuthApi _authApi;

  AuthImplementation(this._authApi);
}
