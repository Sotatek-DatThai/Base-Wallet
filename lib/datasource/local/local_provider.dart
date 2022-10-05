import 'dart:convert';

import 'package:base_wallet/datasource/local/isar/isar_provider.dart';
import 'package:base_wallet/datasource/local/isar/network/network_isar_datasource.dart';
import 'package:base_wallet/datasource/local/shared_preferences_datasource.dart';
import 'package:base_wallet/datasource/remote/models/network/network.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final isarDataSourcePod = FutureProvider(
  (ref) async {
    final isar = await ref.watch(networkIsarPod.future);
    return NetworkIsarDataSource(isar);
  },
);

final sharedPref = FutureProvider((ref) => SharedPreferences.getInstance());

final sharedPrefDatasourcePod = FutureProvider((ref) async =>
    SharedPreferencesDataSource(await ref.watch(sharedPref.future)));

final networkJsonPod = FutureProvider<List<Network>>((ref) async {
  final jsonData = await rootBundle.loadString('assets/json/networks.json');
  final list = json.decode(jsonData) as List<dynamic>;
  final List<Network> networks =
      list.map<Network>((e) => Network.fromJson(cast(e))).toList();
  return networks;
});
