import 'package:base_wallet/datasource/local/local_provider.dart';
import 'package:base_wallet/datasource/local/shared_preferences_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  late final SharedPreferencesDataSource sharedPreferencesDataSource;
  final container = ProviderContainer();
  sharedPreferencesDataSource =
      await container.read(sharedPrefDatasourcePod.future);

  test('description', () async {
    await sharedPreferencesDataSource.setLoggedIn();
    expect(sharedPreferencesDataSource.isLoggedIn(), true);
  });
}
