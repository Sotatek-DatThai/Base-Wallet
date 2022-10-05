import 'package:base_wallet/datasource/local/isar/models/ens_isar/ens_isar.dart';
import 'package:base_wallet/datasource/local/isar/models/explorers_isar/explorers_isar.dart';
import 'package:base_wallet/datasource/local/isar/models/native_currency/native_currency_isar.dart';
import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:base_wallet/datasource/local/isar/network/network_isar_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  late NetworkIsarDataSource networkIsarDataSource;

  setUpAll(() async {
    networkIsarDataSource = NetworkIsarDataSource(await Isar.open([
      NetworkIsarSchema,
      NativeCurrencyIsarSchema,
      EnsIsarSchema,
      ExplorersIsarSchema,
    ]));
  });

  test('Expect network to be import from json', () async {});
}
