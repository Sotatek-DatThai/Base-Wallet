import 'package:base_wallet/common/abi/erc721.g.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

String rpcUrl = 'https://api.avax-test.network/ext/bc/C/rpc';

class ERC721Datasource {
  late final Web3Client _web3client;
  late final Erc721 token;
  final String address;

  ERC721Datasource(this.address) {
    _web3client = Web3Client(rpcUrl, Client());
    token = tokenERC721(address);
  }

  Future<BigInt> balanceOf(String owner) {
    return token.balanceOf(EthereumAddress.fromHex(owner));
  }


  Future<EthereumAddress> getApproved(BigInt tokenId) {
    return token.getApproved(tokenId);
  }

  Future<String> getName() {
    return token.name();
  }

  Future<String> getSymbol() {
    return token.symbol();
  }

  Future<bool> isApprovedForAll(EthereumAddress owner, EthereumAddress operator) {
    return token.isApprovedForAll(owner, operator);
  }

  Future<String> setApprovedForAll(EthereumAddress operator, bool isApprove, Credentials credentials) {
    return token.setApprovalForAll(
        operator,
        isApprove,
        credentials: credentials,
    );
  }

  Future<EthereumAddress> getOwnerOf(BigInt tokenId) {
    return token.ownerOf(tokenId);
  }

  Future<String> approve(
      String spendingAddress, Credentials owner, BigInt value) {
    return token.approve(EthereumAddress.fromHex(spendingAddress), value,
        credentials: owner);
  }

  Future<EtherAmount> getGasPrice() => _web3client.getGasPrice();

  Future<String> transferFrom(EthereumAddress to, EthereumAddress from,
      Credentials owner, BigInt value) async {
    return token.transferFrom(
      from,
      to,
      value,
      credentials: owner,
      transaction: Transaction(
        from: from,
        to: to,
        gasPrice: await getGasPrice(),
      ),
    );
  }

  Erc721 tokenERC721(String address) =>
      Erc721(address: EthereumAddress.fromHex(address), client: _web3client);
}
