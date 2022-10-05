import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:base_wallet/datasource/remote/models/explorers/explorers.dart';
import 'package:isar/isar.dart';

part 'explorers_isar.g.dart';

@Collection(accessor: 'explorers')
class ExplorersIsar {
  final Id id;

  late String name;
  late String url;
  late String standard;

  @Backlink(to: 'explorers')
  final network = IsarLink<NetworkIsar>();

  ExplorersIsar(this.name, this.url, this.standard) : id = Isar.autoIncrement;

  factory ExplorersIsar.fromExplorers(Explorers e) {
    return ExplorersIsar(e.name, e.url, e.standard);
  }
}
