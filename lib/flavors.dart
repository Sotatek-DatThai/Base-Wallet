enum Flavor {
  DEV,
  STG,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Wallet Dev';
      case Flavor.STG:
        return 'Wallet Stg';
      case Flavor.PROD:
        return 'Wallet';
      default:
        return 'title';
    }
  }

}
