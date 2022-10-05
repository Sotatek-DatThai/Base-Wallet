import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:isar/isar.dart';

class NetworkIsarDataSource {
  final Isar _isar;

  NetworkIsarDataSource(this._isar);

  Future<List<int>> saveNetworks(List<NetworkIsar> networks) async {
    return _isar.networkIsars.putAll(networks);
  }

  Future<List<NetworkIsar>> getAll() async {
    return _isar.networkIsars.where().findAll();
  }

  Future<NetworkIsar?> getAt(int chainId) {
    return _isar.networkIsars.get(chainId);
  }

  Future<int> deleteAll() async {
    return await _isar.writeTxn(() async {
      return _isar.networkIsars
          .deleteAll((await getAll()).map((e) => e.chainId).toList());
    });
  }

  Future<bool> deleteAt(int chainId) async {
    return await _isar.writeTxn(() async {
      return _isar.networkIsars.delete(chainId);
    });
  }
}
