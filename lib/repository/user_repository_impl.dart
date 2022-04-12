import 'package:challenge/client/api_client.dart';
import 'package:challenge/repository/user_repository.dart';
import 'package:challenge/response/result.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../response/user.dart';

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepositoryImpl(client: ApiClient(Dio()))
);

class UserRepositoryImpl with UserRepository {
  UserRepositoryImpl({required ApiClient client}) : _client = client;

  final ApiClient _client;

  @override
  Future<Result<List<User>>> fetchUsers() {
    return _client.fetchUsers()
        .then((users) => Result<List<User>>.success(users))
        .catchError((error) => Result<List<User>>.failure(error));
  }

  @override
  Future<Result<User>> fetchUser({required int id}) {
    return _client.fetchUser(id)
        .then((user) => Result<User>.success(user))
        .catchError((error) => Result<User>.failure(error));
  }
}