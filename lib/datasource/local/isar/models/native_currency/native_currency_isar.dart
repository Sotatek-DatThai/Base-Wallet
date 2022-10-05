import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:base_wallet/datasource/remote/models/native_currency/native_currency.dart';
import 'package:isar/isar.dart';

part 'native_currency_isar.g.dart';

@Collection(accessor: 'nativeCurrencies')
class NativeCurrencyIsar {
  final Id id;

  late String name;

  late String symbol;

  late String icon;

  late int decimals;

  late double balance;

  @Backlink(to: 'nativeCurrency')
  final network = IsarLink<NetworkIsar>();

  NativeCurrencyIsar({
    required this.name,
    required this.symbol,
    required this.icon,
    required this.decimals,
    required this.balance,
  }) : id = Isar.autoIncrement;

  factory NativeCurrencyIsar.fromNativeCurrency(
    NativeCurrency e, {
    required String icon,
    required double balance,
  }) {
    return NativeCurrencyIsar(
      name: e.name,
      symbol: e.symbol,
      decimals: e.decimals,
      icon: icon,
      balance: balance,
    );
  }
}
