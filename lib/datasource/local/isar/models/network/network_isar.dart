import 'package:base_wallet/datasource/local/isar/models/ens_isar/ens_isar.dart';
import 'package:base_wallet/datasource/local/isar/models/explorers_isar/explorers_isar.dart';
import 'package:base_wallet/datasource/local/isar/models/native_currency/native_currency_isar.dart';
import 'package:base_wallet/datasource/remote/models/network/network.dart';
import 'package:isar/isar.dart';

part 'network_isar.g.dart';

@collection
class NetworkIsar {
  final Id chainId;

  String? title;

  String? icon;

  String? network;

  int? slip44;

  List<String> faucets;

  late String name;

  late String chain;

  late List<String> rpc;

  late String infoURL;

  late String shortName;

  late int networkId;

  final nativeCurrency = IsarLink<NativeCurrencyIsar>();

  final ens = IsarLink<EnsIsar>();

  final explorers = IsarLinks<ExplorersIsar>();

  NetworkIsar({
    required this.chainId,
    required this.title,
    required this.icon,
    required this.network,
    required this.slip44,
    required this.name,
    required this.chain,
    required this.rpc,
    required this.faucets,
    required this.infoURL,
    required this.shortName,
    required this.networkId,
  });

  factory NetworkIsar.fromNetwork(Network e) {
    final model = NetworkIsar(
      chainId: e.chainId,
      name: e.name,
      chain: e.chain,
      rpc: e.rpc,
      faucets: e.faucets,
      infoURL: e.infoURL,
      shortName: e.shortName,
      networkId: e.networkId,
      network: e.network,
      icon: e.icon,
      slip44: e.slip44,
      title: e.title,
    );
    model
      ..ens.value = EnsIsar.fromEns(e.ens)
      ..nativeCurrency.value = NativeCurrencyIsar.fromNativeCurrency(
        e.nativeCurrency,
        icon: 'e.cryptoIcon',
        balance: 0,
      )
      ..explorers.addAll(e.explorers != null
          ? e.explorers!.map((e) => ExplorersIsar.fromExplorers(e))
          : []);
    return model;
  }
}
