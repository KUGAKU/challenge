import 'package:challenge/response/account.dart';
import 'package:challenge/response/result.dart';

abstract class AccountRepository {
  Future<Result<List<Account>>> fetchUserAccount({required int userId});
  Future<Result<Account>> fetchAccount({required int id});
}