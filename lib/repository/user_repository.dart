import '../response/result.dart';
import '../response/user.dart';

abstract class UserRepository {
  Future<Result<List<User>>> fetchUsers();
  Future<Result<User>> fetchUser({required int id});
}