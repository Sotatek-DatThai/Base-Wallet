import 'package:base_wallet/datasource/local/isar/models/network/network_isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

final networkIsarPod =
    FutureProvider<Isar>((ref) => Isar.open([NetworkIsarSchema]));
