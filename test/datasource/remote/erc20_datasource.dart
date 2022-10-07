import 'package:base_wallet/datasource/remote/token/erc20_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web3dart/credentials.dart';

void main() {
  group('ERC20 unit test', () {
    ERC20Datasource erc20datasource =
        ERC20Datasource('0x950C6F4F97DD62bd3cA76f084663224FD2E6b555');
    test('BalanceOf', () async {
      BigInt balance = await erc20datasource
          .balanceOf('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6');
      expect(balance.isValidInt, true);
    });

    test('Decimals', () async {
      BigInt decimal = await erc20datasource.decimals();
      expect(decimal.isValidInt, true);
    });

    test('Total supply', () async {
      BigInt totalSupply = await erc20datasource.getTotalSupply();
      expect(totalSupply.isValidInt, true);
    });

    test('Approve token', () async {
      final value = BigInt.parse(
          "115792089237316195423570985008687907853269984665640564039457584007913129639935");
      String txh = await erc20datasource.approve(
          '0xaB90A5A8eEC4F6BE91a67eaCb43FF2eF7221D18F',
          EthPrivateKey.fromHex(
              '389bdb4733b975e6495f4dd225778b6a3d0200e4b72ff8924a81b266113bfec7'),
          value);
      expect(txh.isNotEmpty, true);
    });

    test('Allowance', () async {
      BigInt allowance = await erc20datasource.allowance(
          '0xaB90A5A8eEC4F6BE91a67eaCb43FF2eF7221D18F',
          EthereumAddress.fromHex(
              '0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6'));
      print('allowance: $allowance');
      expect(allowance, BigInt.parse("115792089237316195423570985008687907853269984665640564039457584007913129639935"));
    });

    test('Transfer token', () async {
      String txh = await erc20datasource.transfer(
          EthereumAddress.fromHex('0xF6F97BdD66A40889b23066858D1c734510642955'),
          EthereumAddress.fromHex('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6'),
          EthPrivateKey.fromHex(
              '389bdb4733b975e6495f4dd225778b6a3d0200e4b72ff8924a81b266113bfec7'),
          BigInt.from(1));
      print('txh: $txh');
      expect(txh.isNotEmpty, true);
    });

    test('TransferForm token', () async {
      String txh = await erc20datasource.transferForm(
          EthereumAddress.fromHex('0xF6F97BdD66A40889b23066858D1c734510642955'),
          EthereumAddress.fromHex('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6'),
          EthPrivateKey.fromHex(
              '389bdb4733b975e6495f4dd225778b6a3d0200e4b72ff8924a81b266113bfec7'),
          BigInt.from(1));
      print('txh: $txh');
      expect(txh.isNotEmpty, true);
    });
  });
}
