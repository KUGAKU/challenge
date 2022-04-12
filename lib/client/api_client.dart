import 'package:challenge/response/account.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../response/user.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://mfx-recruit-dev.herokuapp.com')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/users')
  Future<List<User>> fetchUsers();

  @GET('/users/{id}')
  Future<User> fetchUser(@Path('id') int id);

  @GET('/users/{id}/accounts')
  Future<List<Account>> fetchUserAccount(@Path('id') int id);

  @GET('/accounts/{id}')
  Future<Account> fetchAccount(@Path('id') int id);
}