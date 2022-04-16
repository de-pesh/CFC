import 'package:proj_cfc/utils/constants.dart';
import 'package:web3dart/web3dart.dart';
import 'package:flutter/services.dart';
import 'utils/constants.dart';

Future<DeployedContract> loadContract() async {
  String abi = await rootBundle.loadString('assets/abi.json');
  String cont = contract_add;
  final contract = DeployedContract(ContractAbi.fromJson(abi, 'Charity'),
      EthereumAddress.fromHex(contract_add));
  return contract;
}

Future<String> CallFunction(String funcname, List<dynamic> args,
    Web3Client ethClient, String privatekey) async {
  EthPrivateKey credentials = EthPrivateKey.fromHex(privatekey);
  DeployedContract contract = await loadContract();
  final ethFunction = contract.function(funcname);
  final result = await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
          contract: contract, function: ethFunction, parameters: args));
  return result;
}

Future<String> AddDoner(String name, Web3Client ethclient) async {
  var response =
      await CallFunction('Add_Doner', [name], ethclient, doner_pvt_key);

  print("doner added");
  return response;
}

Future<String> AddOrg(String name, Web3Client ethclient) async {
  var response =
      await CallFunction('Add_Organisation', [name], ethclient, org_pvt_key);
  print("org added");
  return response;
}

Future<String> Addmoney(int money, Web3Client ethclient) async {
  var response =
      await CallFunction('AddMoney', [money], ethclient, org_pvt_key);
  print("money added");
  return response;
}

Future<String> Donatemoney(int money, Web3Client ethclient) async {
  var response =
      await CallFunction('Donate', [money, 0, 0], ethclient, org_pvt_key);
  print("donated");
  return response;
}
