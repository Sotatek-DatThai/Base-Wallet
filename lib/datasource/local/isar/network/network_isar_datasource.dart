import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:isar/isar.dart';

class NetworkIsarDataSource {
  final Isar _isar;

  NetworkIsarDataSource(this._isar);

  Future<List<int>> saveNetworks(List<NetworkIsar> networks) async {
    return _isar.networkIsars.putAll(networks);
  }
}
