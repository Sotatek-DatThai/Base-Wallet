import 'package:base_wallet/datasource/local/local_provider.dart';
import 'package:base_wallet/datasource/local/secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  late final SecureStorage secureStorage;
  final container = ProviderContainer();

  container.listen(secureStoragePod, (previous, next) {
    print('previous: $previous');
    print('next: $next');
  });

  setUpAll(() {
    secureStorage = container.read(secureStoragePod);
  });

  test('should store access token', () async {
    addTearDown(container.dispose);
    const String accessToken = 'AxbDe';
    await secureStorage.setAccessToken('accessToken');
    expect(await secureStorage.getAccessToken(), accessToken);
  });
}
