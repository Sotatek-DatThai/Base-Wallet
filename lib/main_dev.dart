import 'package:base_wallet/run.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.DEV;
  run();
}
