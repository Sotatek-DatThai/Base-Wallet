import 'package:base_wallet/datasource/remote/token/erc721_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web3dart/credentials.dart';

void main() {
  group('ERC721 unit test', () {
    ERC721Datasource erc721datasource =
    ERC721Datasource('0x950C6F4F97DD62bd3cA76f084663224FD2E6b555');
    test('BalanceOf', () async {
      BigInt balance = await erc721datasource
          .balanceOf('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6');
      expect(balance.isValidInt, true);
    });

    test('Is Approved for all', () async {
      bool isApproved = await erc721datasource.isApprovedForAll(
          EthereumAddress.fromHex('0xF6F97BdD66A40889b23066858D1c734510642955'),
          EthereumAddress.fromHex('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6'));
      expect(isApproved, true);
    });

    test('Set Approved for all', () async {
      String setApproved = await erc721datasource.setApprovedForAll(
        EthereumAddress.fromHex('0x52839A88E9FdD2b137E32c65fEc8E7b3f1F1CCC6'),
        true,
        EthPrivateKey.fromHex(
            '389bdb4733b975e6495f4dd225778b6a3d0200e4b72ff8924a81b266113bfec7'),);
      expect(setApproved, true);
    });

    test('getOwnerOf', () async {
      final value = BigInt.parse(
          "115792089237316195423570985008687907853269984665640564039457584007913129639935");
      EthereumAddress getOwnerOf = await erc721datasource.getOwnerOf(value);
      expect(getOwnerOf, true);
    });

    test('Approve token', () async {
      final value = BigInt.parse(
          "115792089237316195423570985008687907853269984665640564039457584007913129639935");
      String txh = await erc721datasource.approve(
          '0xaB90A5A8eEC4F6BE91a67eaCb43FF2eF7221D18F',
          EthPrivateKey.fromHex(
              '389bdb4733b975e6495f4dd225778b6a3d0200e4b72ff8924a81b266113bfec7'),
          value);
      expect(txh.isNotEmpty, true);
    });

    test('TransferFrom token', () async {
      String txh = await erc721datasource.transferFrom(
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
