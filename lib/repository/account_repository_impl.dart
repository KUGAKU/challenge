import 'package:challenge/client/api_client.dart';
import 'package:challenge/response/account.dart';
import 'package:challenge/repository/account_repository.dart';
import 'package:challenge/response/result.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final accountRepositoryProvider = Provider<AccountRepository>(
    (ref) => AccountRepositoryImpl(client: ApiClient(Dio()))
);

class AccountRepositoryImpl with AccountRepository {
  AccountRepositoryImpl({required ApiClient client}) : _client = client;
  final ApiClient _client;

  @override
  Future<Result<Account>> fetchAccount({required int id}) {
    return _client.fetchAccount(id)
        .then((account) => Result<Account>.success(account))
        .catchError((error) => Result<Account>.failure(error));
  }

  @override
  Future<Result<List<Account>>> fetchUserAccount({required int userId}) {
    return _client.fetchUserAccount(userId)
        .then((userAccount) => Result<List<Account>>.success(userAccount))
        .catchError((error) => Result<List<Account>>.failure(error));
  }
  
}