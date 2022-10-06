import 'package:erc20/erc20.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

String rpcUrl = 'https://api.avax-test.network/ext/bc/C/rpc';

class ERC20Datasource {
  late final Web3Client _web3client;
  late final ERC20 token;
  final String address;

  ERC20Datasource(this.address) {
    _web3client = Web3Client(rpcUrl, Client());
    token = tokenERC20(address);
  }

  Future<BigInt> balanceOf(String owner) {
    return token.balanceOf(EthereumAddress.fromHex(owner));
  }

  Future<BigInt> decimals() {
    return token.decimals();
  }

  Future<BigInt> getTotalSupply() {
    return token.totalSupply();
  }

  Future<String> getName() {
    return token.name();
  }

  Future<String> getSymbol() {
    return token.symbol();
  }

  Future<String> approve(
      String spendingAddress, Credentials owner, BigInt value) {
    return token.approve(EthereumAddress.fromHex(spendingAddress), value,
        credentials: owner);
  }

  Future<BigInt> allowance(
      String spendingAddress, EthereumAddress owner) {
    return token.allowance(owner, EthereumAddress.fromHex(spendingAddress));
  }

  Future<EtherAmount> getGasPrice() => _web3client.getGasPrice();

  Future<String> transfer(EthereumAddress to, EthereumAddress from,
      Credentials owner, BigInt value) async {
    return token.transfer(
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

  Future<String> transferForm(EthereumAddress to, EthereumAddress from,
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

  ERC20 tokenERC20(String address) =>
      ERC20(address: EthereumAddress.fromHex(address), client: _web3client);
}
