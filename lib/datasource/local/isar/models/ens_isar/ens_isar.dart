import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:base_wallet/datasource/remote/models/ens/ens.dart';
import 'package:base_wallet/datasource/remote/models/explorers/explorers.dart';
import 'package:isar/isar.dart';

part 'ens_isar.g.dart';

@Collection()
class EnsIsar {
  final Id id;

  late String registry;

  @Backlink(to: 'ens')
  final network = IsarLink<NetworkIsar>();

  EnsIsar(this.registry) : id = Isar.autoIncrement;

  static EnsIsar? fromEns(Ens? e) {
    if (e != null) {
      return EnsIsar(e.registry);
    }
    return null;
  }


}
